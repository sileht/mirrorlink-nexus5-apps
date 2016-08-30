.class public Lcom/leff/midi/MidiFile;
.super Ljava/lang/Object;
.source "MidiFile.java"


# static fields
.field public static final DEFAULT_RESOLUTION:I = 0x1e0

.field public static final HEADER_SIZE:I = 0xe

.field public static final IDENTIFIER:[B

.field private static final TAG:Ljava/lang/String; = "Opera"


# instance fields
.field private mResolution:I

.field private mTrackCount:I

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/leff/midi/MidiFile;->IDENTIFIER:[B

    .line 23
    return-void

    .line 21
    nop

    :array_a
    .array-data 1
        0x4dt
        0x54t
        0x68t
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    const/16 v0, 0x1e0

    invoke-direct {p0, v0}, Lcom/leff/midi/MidiFile;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "resolution"    # I

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/leff/midi/MidiFile;-><init>(ILjava/util/ArrayList;)V

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "resolution"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-ltz p1, :cond_1b

    .end local p1    # "resolution":I
    :goto_6
    iput p1, p0, Lcom/leff/midi/MidiFile;->mResolution:I

    .line 45
    if-eqz p2, :cond_1e

    move-object v0, p2

    :goto_b
    iput-object v0, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    .line 47
    iget v0, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    if-le v0, v1, :cond_24

    move v0, v1

    :goto_18
    iput v0, p0, Lcom/leff/midi/MidiFile;->mType:I

    .line 48
    return-void

    .line 43
    .restart local p1    # "resolution":I
    :cond_1b
    const/16 p1, 0x1e0

    goto :goto_6

    .line 45
    .end local p1    # "resolution":I
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b

    .line 47
    :cond_24
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "rawIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v2, "in":Ljava/io/BufferedInputStream;
    const/16 v3, 0xe

    new-array v0, v3, [B

    .line 56
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    .line 57
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 60
    :cond_19
    invoke-direct {p0, v0}, Lcom/leff/midi/MidiFile;->initFromBuffer([B)V

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    iget v3, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    if-lt v1, v3, :cond_29

    .line 67
    return-void

    .line 65
    :cond_29
    iget-object v3, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    new-instance v4, Lcom/leff/midi/MidiTrack;

    invoke-direct {v4, v2}, Lcom/leff/midi/MidiTrack;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method private initFromBuffer([B)V
    .registers 6
    .param p1, "buffer"    # [B

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 210
    sget-object v0, Lcom/leff/midi/MidiFile;->IDENTIFIER:[B

    const/4 v1, 0x4

    invoke-static {p1, v0, v2, v1}, Lcom/leff/midi/util/MidiUtil;->bytesEqual([B[BII)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "File identifier not MThd. Exiting"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    iput v2, p0, Lcom/leff/midi/MidiFile;->mType:I

    .line 214
    iput v2, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    .line 215
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/leff/midi/MidiFile;->mResolution:I

    .line 222
    :goto_1a
    return-void

    .line 219
    :cond_1b
    const/16 v0, 0x8

    invoke-static {p1, v0, v3}, Lcom/leff/midi/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/leff/midi/MidiFile;->mType:I

    .line 220
    const/16 v0, 0xa

    invoke-static {p1, v0, v3}, Lcom/leff/midi/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    .line 221
    const/16 v0, 0xc

    invoke-static {p1, v0, v3}, Lcom/leff/midi/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/leff/midi/MidiFile;->mResolution:I

    goto :goto_1a
.end method


# virtual methods
.method public addTrack(Lcom/leff/midi/MidiTrack;)V
    .registers 3
    .param p1, "T"    # Lcom/leff/midi/MidiTrack;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/leff/midi/MidiFile;->addTrack(Lcom/leff/midi/MidiTrack;I)V

    .line 131
    return-void
.end method

.method public addTrack(Lcom/leff/midi/MidiTrack;I)V
    .registers 5
    .param p1, "T"    # Lcom/leff/midi/MidiTrack;
    .param p2, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 136
    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p2, v1, :cond_23

    .line 138
    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 145
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    .line 147
    iget v1, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    if-le v1, v0, :cond_27

    :goto_20
    iput v0, p0, Lcom/leff/midi/MidiFile;->mType:I

    .line 148
    return-void

    .line 140
    :cond_23
    if-gez p2, :cond_f

    .line 142
    const/4 p2, 0x0

    goto :goto_f

    .line 147
    :cond_27
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getLengthInTicks()J
    .registers 8

    .prologue
    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .local v4, "length":J
    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f

    .line 120
    return-wide v4

    .line 112
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/MidiTrack;

    .line 114
    .local v0, "T":Lcom/leff/midi/MidiTrack;
    invoke-virtual {v0}, Lcom/leff/midi/MidiTrack;->getLengthInTicks()J

    move-result-wide v2

    .line 115
    .local v2, "l":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    .line 117
    move-wide v4, v2

    goto :goto_8
.end method

.method public getResolution()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/leff/midi/MidiFile;->mResolution:I

    return v0
.end method

.method public getTrackCount()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    return v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leff/midi/MidiTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/leff/midi/MidiFile;->mType:I

    return v0
.end method

.method public removeTrack(I)V
    .registers 4
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 152
    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 159
    :cond_b
    :goto_b
    return-void

    .line 156
    :cond_c
    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    .line 158
    iget v1, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    if-le v1, v0, :cond_20

    :goto_1d
    iput v0, p0, Lcom/leff/midi/MidiFile;->mType:I

    goto :goto_b

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setResolution(I)V
    .registers 2
    .param p1, "res"    # I

    .prologue
    .line 98
    if-ltz p1, :cond_4

    .line 100
    iput p1, p0, Lcom/leff/midi/MidiFile;->mResolution:I

    .line 102
    :cond_4
    return-void
.end method

.method public setType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 71
    if-gez p1, :cond_6

    .line 73
    const/4 p1, 0x0

    .line 83
    :cond_3
    :goto_3
    iput p1, p0, Lcom/leff/midi/MidiFile;->mType:I

    .line 84
    return-void

    .line 75
    :cond_6
    const/4 v0, 0x2

    if-le p1, v0, :cond_b

    .line 77
    const/4 p1, 0x1

    .line 78
    goto :goto_3

    .line 79
    :cond_b
    if-nez p1, :cond_3

    iget v0, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 81
    const/4 p1, 0x1

    goto :goto_3
.end method

.method public writeToFile(Ljava/io/File;)V
    .registers 7
    .param p1, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 165
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_5
    sget-object v2, Lcom/leff/midi/MidiFile;->IDENTIFIER:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_44

    .line 166
    :goto_a
    const/4 v2, 0x6

    const/4 v3, 0x4

    :try_start_c
    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_4d

    .line 167
    :goto_13
    :try_start_13
    iget v2, p0, Lcom/leff/midi/MidiFile;->mType:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_56

    .line 168
    :goto_1d
    :try_start_1d
    iget v2, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_5f

    .line 169
    :goto_27
    :try_start_27
    iget v2, p0, Lcom/leff/midi/MidiFile;->mResolution:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_68

    .line 171
    :goto_31
    iget-object v2, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_71

    .line 177
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_84

    .line 181
    :goto_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 182
    return-void

    .line 165
    :catch_44
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(IDENTIFIER) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 166
    :catch_4d
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(6, 4)) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 167
    :catch_56
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(mType, 2) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 168
    :catch_5f
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(mTrackCount, 2)) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 169
    :catch_68
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(mResolution, 2) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 171
    :cond_71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/MidiTrack;

    .line 173
    .local v0, "T":Lcom/leff/midi/MidiTrack;
    :try_start_77
    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->writeToFile(Ljava/io/OutputStream;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_37

    :catch_7b
    move-exception v3

    const-string v3, "Opera"

    const-string v4, "T.writeToFile(fout) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 179
    .end local v0    # "T":Lcom/leff/midi/MidiTrack;
    :catch_84
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.flush()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public writeToFile(Ljava/io/File;J)V
    .registers 10
    .param p1, "outFile"    # Ljava/io/File;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v1, "fout":Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_46

    .line 193
    :goto_a
    :try_start_a
    sget-object v2, Lcom/leff/midi/MidiFile;->IDENTIFIER:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_4f

    .line 194
    :goto_f
    const/4 v2, 0x6

    const/4 v3, 0x4

    :try_start_11
    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_58

    .line 195
    :goto_18
    :try_start_18
    iget v2, p0, Lcom/leff/midi/MidiFile;->mType:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_61

    .line 196
    :goto_22
    :try_start_22
    iget v2, p0, Lcom/leff/midi/MidiFile;->mTrackCount:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_6a

    .line 197
    :goto_2c
    :try_start_2c
    iget v2, p0, Lcom/leff/midi/MidiFile;->mResolution:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/leff/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_36} :catch_73

    .line 199
    :goto_36
    iget-object v2, p0, Lcom/leff/midi/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 205
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 206
    return-void

    .line 190
    :catch_46
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.seek(offset)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 193
    :catch_4f
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(IDENTIFIER) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 194
    :catch_58
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(6, 4)) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 195
    :catch_61
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(mType, 2) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 196
    :catch_6a
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(mTrackCount, 2)) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 197
    :catch_73
    move-exception v2

    const-string v2, "Opera"

    const-string v3, "fout.write(MidiUtil.intToBytes(mResolution, 2) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 199
    :cond_7c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leff/midi/MidiTrack;

    .line 201
    .local v0, "T":Lcom/leff/midi/MidiTrack;
    :try_start_82
    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->writeToFile(Ljava/io/RandomAccessFile;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_3c

    :catch_86
    move-exception v3

    const-string v3, "Opera"

    const-string v4, "T.writeToFile(fout) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
