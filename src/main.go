package main

import (
	"github.com/gordonklaus/portaudio"
)

func callcack(outData []float32) {
	for index := range outData {
		outData[index] = 0
	}
}

func main() {
	err := portaudio.Initialize()
	if err != nil {
		panic(err)
	}
	defer portaudio.Terminate()

	buffer := make([]float32, 1024)
	stream, err := portaudio.OpenDefaultStream(0, 2, 48000, len(buffer), callcack)
	if err != nil {
		panic(err)
	}

	stream.Start()
	defer stream.Stop()

	select {}
}
