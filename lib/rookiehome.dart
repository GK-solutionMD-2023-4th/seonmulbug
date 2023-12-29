import 'package:flutter/material.dart';

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductSearchPage(),
    );
  }
}

class ProductSearchPage extends StatefulWidget {
  @override
  _ProductSearchPageState createState() => _ProductSearchPageState();
}

class _ProductSearchPageState extends State<ProductSearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            SizedBox(height: 16),
            _buildSearchResults(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search products...',
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Handle search button pressed
            _performSearch();
          },
        ),
      ),
    );
  }

  void _performSearch() {
    // Implement your search logic here
    // You can use the _searchController.text to get the search query
    // Update the UI with search results
    // For simplicity, let's print the search query for now
    print('Searching for: ${_searchController.text}');
  }

  Widget _buildSearchResults() {
    // Implement the UI to display search results here
    // You can use a ListView.builder to display a list of search results
    // For simplicity, let's use a placeholder container for now
    return Container(
      height: 200,
      color: Colors.grey[200],
      child: Center(
        child: Text('Search results will be displayed here'),
      ),
    );
  }
}
