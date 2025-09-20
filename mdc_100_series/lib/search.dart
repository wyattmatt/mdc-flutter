import 'package:flutter/material.dart';
import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/product_card.dart';
import 'colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Product> _searchResults = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _searchResults = ProductsRepository.loadProducts(Category.all);
  }

  void _performSearch(String query) {
    setState(() {
      _isSearching = query.isNotEmpty;
      if (query.isEmpty) {
        _searchResults = ProductsRepository.loadProducts(Category.all);
      } else {
        _searchResults = ProductsRepository.searchProducts(query);
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search People'),
        backgroundColor: kShrinePink100,
        foregroundColor: kShrineBrown900,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Search input field
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search people by name...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _performSearch('');
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: kShrinePink300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: kShrineBrown900, width: 2.0),
                ),
                filled: true,
                fillColor: kShrineSurfaceWhite,
              ),
              onChanged: _performSearch,
            ),
          ),
          // Search results info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  _isSearching
                      ? 'Found ${_searchResults.length} results'
                      : 'All People (${_searchResults.length})',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          // Search results
          Expanded(
            child: _searchResults.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: kShrinePink300,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _isSearching
                              ? 'No people found'
                              : 'No people available',
                          style: TextStyle(
                            fontSize: 18,
                            color: kShrineBrown900.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.52,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                    ),
                    itemCount: _searchResults.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: _searchResults[index],
                        imageAspectRatio: 0.75,
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
