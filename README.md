# Empty Audio

Play a silent audio to keep the audio device active.

## Installation

> **Note:**
>
> Linux users are required to install `libportaudio2` as the runtime .

### GitHub Releases

Download latest release from [GitHub Releases](https://github.com/MarkIvory2973/empty-audio/releases/latest).

### Build from source

#### Requirements

 - portaudio19-dev
 - Go 1.26+
 - UPX
 - GNU Make
 - Git

Clone the repository:

```bash
git clone https://github.com/MarkIvory2973/empty-audio.git
cd empty-audio
```

Install dependencies:

```bash
make install
```

Build binaries:

```bash
make build
```

Build `.deb` packages (optional):

```bash
make package
```

Clean files:

```bash
make clean
```

## Usage

Run the following command:

```bash
./empty-audio
```
