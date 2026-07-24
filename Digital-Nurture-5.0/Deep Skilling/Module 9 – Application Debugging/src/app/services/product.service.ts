import { Injectable } from '@angular/core';
import { Product } from '../models/product';

@Injectable({
  providedIn: 'root'
})

export class ProductService {

  products: Product[] = [

    {
      id: 1,
      name: 'Laptop',
      price: 55000
    },

    {
      id: 2,
      name: 'Mobile',
      price: 25000
    },

    {
      id: 3,
      name: 'Keyboard',
      price: 1500
    },

    {
      id: 4,
      name: 'Mouse',
      price: 800
    }

  ];

  constructor() { }

  getProducts(): Product[] {

    return this.products;

  }

}
