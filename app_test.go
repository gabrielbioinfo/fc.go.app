package main

import "testing"

func TestApp(t *testing.T) {

	total := Sum(15, 15)
	if total != 30 {
		t.Errorf("Invalid result! The result should be %d, but was %d", 30, total)
	}

}
