import iopipe.zip;
import iopipe.bufpipe;
import iopipe.refc;
import std.io;

void main()
{
    // decompress the input into the output
    auto nbytes = File(0).refCounted.bufd.unzip.outputPipe(File(1).refCounted).process();
    import std.stdio : stderr;
    stderr.writefln("decompressed %s bytes", nbytes);
}
