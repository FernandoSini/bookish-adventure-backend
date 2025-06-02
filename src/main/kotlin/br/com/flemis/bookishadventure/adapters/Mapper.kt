package br.com.flemis.bookishadventure.adapters

import org.modelmapper.ModelMapper

class Mapper {

     fun <D> convert(from: Any, to: Class<D>): D {
        val mapper = ModelMapper();
        return mapper.map(from, to)
    }
}