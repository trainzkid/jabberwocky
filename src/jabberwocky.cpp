#include <iostream>
#include "structural/word.h"
#include "structural/sentence.h"
#include "structural/partsOfSpeech.h"

int main() {
	word<POS::NOUN> w{"testing"};
	sentence t{{"test","test3","test22"}};		// I HATE the double {} !!!!

	for (std::string s : t)
		std::cout<<s<<' ';
	std::cout<<'\n';
	
	std::cout<<"Jabberwocky test output"<<'\n';
	return 0;
}
