.class public Lcom/lge/opera/RingtoneFile;
.super Ljava/lang/Object;
.source "RingtoneFile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtoneFile"

.field private static mBackupFilename:Ljava/lang/String;

.field private static mBackupPath:Ljava/lang/String;

.field private static mOperaPath:Ljava/lang/String;

.field private static mPreloadPath:Ljava/lang/String;


# instance fields
.field private final TPQN:I

.field private instrument:Ljava/lang/String;

.field private mJetFilename:Ljava/lang/String;

.field private mPatternType:I

.field private tempo:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/opera/RingtoneFile;->mPreloadPath:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Ringtones/Opera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    .line 25
    const-string v0, "/system/media/audio/jet/"

    sput-object v0, Lcom/lge/opera/RingtoneFile;->mBackupPath:Ljava/lang/String;

    .line 26
    const-string v0, "L0.jet"

    sput-object v0, Lcom/lge/opera/RingtoneFile;->mBackupFilename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # I
    .param p3, "pattern"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "exampleout.mid"

    iput-object v0, p0, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    .line 28
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/lge/opera/RingtoneFile;->TPQN:I

    .line 34
    iput-object p1, p0, Lcom/lge/opera/RingtoneFile;->instrument:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/lge/opera/RingtoneFile;->tempo:I

    .line 36
    iput p3, p0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    .line 37
    return-void
.end method

.method private generateJetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 27
    .param p1, "midiFilePath"    # Ljava/lang/String;
    .param p2, "jetFilePath"    # Ljava/lang/String;
    .param p3, "dlsFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/16 v21, 0x2e

    move/from16 v0, v21

    new-array v6, v0, [B

    const/16 v21, 0x0

    .line 237
    const/16 v22, 0x4a

    aput-byte v22, v6, v21

    const/16 v21, 0x1

    const/16 v22, 0x49

    aput-byte v22, v6, v21

    const/16 v21, 0x2

    const/16 v22, 0x4e

    aput-byte v22, v6, v21

    const/16 v21, 0x3

    const/16 v22, 0x46

    aput-byte v22, v6, v21

    const/16 v21, 0x4

    const/16 v22, 0x18

    aput-byte v22, v6, v21

    const/16 v21, 0x8

    const/16 v22, 0x4a

    aput-byte v22, v6, v21

    const/16 v21, 0x9

    const/16 v22, 0x56

    aput-byte v22, v6, v21

    const/16 v21, 0xa

    const/16 v22, 0x45

    aput-byte v22, v6, v21

    const/16 v21, 0xb

    const/16 v22, 0x52

    aput-byte v22, v6, v21

    const/16 v21, 0xf

    const/16 v22, 0x1

    aput-byte v22, v6, v21

    const/16 v21, 0x10

    .line 238
    const/16 v22, 0x53

    aput-byte v22, v6, v21

    const/16 v21, 0x11

    const/16 v22, 0x4d

    aput-byte v22, v6, v21

    const/16 v21, 0x12

    const/16 v22, 0x46

    aput-byte v22, v6, v21

    const/16 v21, 0x13

    const/16 v22, 0x23

    aput-byte v22, v6, v21

    const/16 v21, 0x14

    const/16 v22, 0x1

    aput-byte v22, v6, v21

    const/16 v21, 0x18

    const/16 v22, 0x44

    aput-byte v22, v6, v21

    const/16 v21, 0x19

    const/16 v22, 0x4c

    aput-byte v22, v6, v21

    const/16 v21, 0x1a

    const/16 v22, 0x53

    aput-byte v22, v6, v21

    const/16 v21, 0x1b

    const/16 v22, 0x23

    aput-byte v22, v6, v21

    const/16 v21, 0x1c

    const/16 v22, 0x1

    aput-byte v22, v6, v21

    const/16 v21, 0x20

    .line 239
    const/16 v22, 0x4a

    aput-byte v22, v6, v21

    const/16 v21, 0x21

    const/16 v22, 0x43

    aput-byte v22, v6, v21

    const/16 v21, 0x22

    const/16 v22, 0x4f

    aput-byte v22, v6, v21

    const/16 v21, 0x23

    const/16 v22, 0x50

    aput-byte v22, v6, v21

    const/16 v21, 0x24

    const/16 v22, 0x2

    aput-byte v22, v6, v21

    const/16 v21, 0x2a

    const/16 v22, 0x4a

    aput-byte v22, v6, v21

    const/16 v21, 0x2b

    const/16 v22, 0x53

    aput-byte v22, v6, v21

    const/16 v21, 0x2c

    const/16 v22, 0x4d

    aput-byte v22, v6, v21

    const/16 v21, 0x2d

    const/16 v22, 0x46

    aput-byte v22, v6, v21

    .line 242
    .local v6, "JetHeader":[B
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v5, v0, [B

    fill-array-data v5, :array_21e

    .line 243
    .local v5, "JetDef":[B
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v4, v0, [B

    fill-array-data v4, :array_224

    .line 245
    .local v4, "DlsHeader":[B
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 246
    .local v16, "in_midi":Ljava/io/InputStream;
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 247
    .local v19, "out_jet":Ljava/io/OutputStream;
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 249
    .local v15, "in_dls":Ljava/io/InputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v17

    .line 250
    .local v17, "midifilesize":I
    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v12

    .line 251
    .local v12, "dlsfilesize":I
    const/16 v20, 0x42

    .line 253
    .local v20, "totalfilesize":I
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v14, v0, [B

    .line 254
    .local v14, "filesize_byteswapped":[B
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 256
    .local v7, "MidiData":[B
    const/4 v13, 0x0

    .line 259
    .local v13, "end":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 261
    add-int v20, v20, v17

    .line 262
    add-int v20, v20, v12

    .line 265
    shr-int/lit8 v21, v20, 0x0

    move/from16 v0, v21

    and-int/lit16 v8, v0, 0xff

    .line 266
    .local v8, "b1":I
    shr-int/lit8 v21, v20, 0x8

    move/from16 v0, v21

    and-int/lit16 v9, v0, 0xff

    .line 267
    .local v9, "b2":I
    shr-int/lit8 v21, v20, 0x10

    move/from16 v0, v21

    and-int/lit16 v10, v0, 0xff

    .line 268
    .local v10, "b3":I
    shr-int/lit8 v21, v20, 0x18

    move/from16 v0, v21

    and-int/lit16 v11, v0, 0xff

    .line 270
    .local v11, "b4":I
    const/16 v21, 0x0

    int-to-byte v0, v8

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 271
    const/16 v21, 0x1

    int-to-byte v0, v9

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 272
    const/16 v21, 0x2

    int-to-byte v0, v10

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 273
    const/16 v21, 0x3

    int-to-byte v0, v11

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 276
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    .line 277
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 279
    shr-int/lit8 v21, v17, 0x0

    move/from16 v0, v21

    and-int/lit16 v8, v0, 0xff

    .line 280
    shr-int/lit8 v21, v17, 0x8

    move/from16 v0, v21

    and-int/lit16 v9, v0, 0xff

    .line 281
    shr-int/lit8 v21, v17, 0x10

    move/from16 v0, v21

    and-int/lit16 v10, v0, 0xff

    .line 282
    shr-int/lit8 v21, v17, 0x18

    move/from16 v0, v21

    and-int/lit16 v11, v0, 0xff

    .line 284
    const/16 v21, 0x0

    int-to-byte v0, v8

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 285
    const/16 v21, 0x1

    int-to-byte v0, v9

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 286
    const/16 v21, 0x2

    int-to-byte v0, v10

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 287
    const/16 v21, 0x3

    int-to-byte v0, v11

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 290
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    .line 293
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    .line 294
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 297
    shr-int/lit8 v21, v12, 0x0

    move/from16 v0, v21

    and-int/lit16 v8, v0, 0xff

    .line 298
    shr-int/lit8 v21, v12, 0x8

    move/from16 v0, v21

    and-int/lit16 v9, v0, 0xff

    .line 299
    shr-int/lit8 v21, v12, 0x10

    move/from16 v0, v21

    and-int/lit16 v10, v0, 0xff

    .line 300
    shr-int/lit8 v21, v12, 0x18

    move/from16 v0, v21

    and-int/lit16 v11, v0, 0xff

    .line 302
    const/16 v21, 0x0

    int-to-byte v0, v8

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 303
    const/16 v21, 0x1

    int-to-byte v0, v9

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 304
    const/16 v21, 0x2

    int-to-byte v0, v10

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 305
    const/16 v21, 0x3

    int-to-byte v0, v11

    move/from16 v22, v0

    aput-byte v22, v14, v21

    .line 308
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 311
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    .line 315
    const/16 v18, 0x0

    .line 317
    .local v18, "offset":I
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 318
    .local v3, "DLSData":[B
    :goto_1c8
    if-eqz v13, :cond_1da

    .line 333
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 334
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 336
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 337
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 339
    const/4 v7, 0x0

    .line 340
    const/4 v3, 0x0

    .line 341
    const/4 v14, 0x0

    .line 342
    return-void

    .line 319
    :cond_1da
    add-int/lit16 v0, v12, -0x400

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_204

    .line 321
    const/16 v21, 0x0

    sub-int v22, v12, v18

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 322
    const/16 v21, 0x0

    sub-int v22, v12, v18

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 323
    const/4 v13, 0x1

    .line 330
    :goto_1fd
    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    goto :goto_1c8

    .line 327
    :cond_204
    const/16 v21, 0x0

    const/16 v22, 0x400

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 328
    const/16 v21, 0x0

    const/16 v22, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1fd

    .line 242
    nop

    :array_21e
    .array-data 1
        0x4at
        0x45t
        0x54t
        0x20t
    .end array-data

    .line 243
    :array_224
    .array-data 1
        0x4at
        0x44t
        0x4ct
        0x53t
    .end array-data
.end method


# virtual methods
.method public createNewJetFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v9, 0x1

    .line 156
    .local v9, "methodNum":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_191

    .line 157
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_L0.mid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "MIDIFileName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_L0.jet"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "JetFileName":Ljava/lang/String;
    const-string v4, "Opera_synth_L0.dls"

    .line 160
    .local v4, "DLSFileName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 170
    :goto_38
    new-instance v14, Ljava/io/File;

    sget-object v21, Lcom/lge/opera/RingtoneFile;->mPreloadPath:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v14, "preloadDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_61

    .line 172
    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    move-result v15

    .line 173
    .local v15, "res":Z
    const-string v21, "RingtoneFile"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mkdir() returns "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v15    # "res":Z
    :cond_61
    new-instance v8, Ljava/io/File;

    sget-object v21, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v8, "jetDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_8a

    .line 178
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    move-result v15

    .line 179
    .restart local v15    # "res":Z
    const-string v21, "RingtoneFile"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mkdir() returns "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v15    # "res":Z
    :cond_8a
    new-instance v18, Lcom/leff/midi/MidiTrack;

    invoke-direct/range {v18 .. v18}, Lcom/leff/midi/MidiTrack;-><init>()V

    .line 184
    .local v18, "tempoTrack":Lcom/leff/midi/MidiTrack;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v12, "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    new-instance v20, Lcom/leff/midi/event/meta/TimeSignature;

    invoke-direct/range {v20 .. v20}, Lcom/leff/midi/event/meta/TimeSignature;-><init>()V

    .line 189
    .local v20, "ts":Lcom/leff/midi/event/meta/TimeSignature;
    const/16 v21, 0x4

    const/16 v22, 0x4

    const/16 v23, 0x18

    const/16 v24, 0x8

    invoke-virtual/range {v20 .. v24}, Lcom/leff/midi/event/meta/TimeSignature;->setTimeSignature(IIII)V

    .line 191
    new-instance v17, Lcom/leff/midi/event/meta/Tempo;

    invoke-direct/range {v17 .. v17}, Lcom/leff/midi/event/meta/Tempo;-><init>()V

    .line 192
    .local v17, "t":Lcom/leff/midi/event/meta/Tempo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->tempo:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/leff/midi/event/meta/Tempo;->setBpm(F)V

    .line 194
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 195
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 199
    new-instance v16, Lcom/lge/opera/RingtoneCompose;

    const/16 v21, 0x1e0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/lge/opera/RingtoneCompose;-><init>(IIII)V

    .line 200
    .local v16, "rtCompose":Lcom/lge/opera/RingtoneCompose;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/lge/opera/RingtoneCompose;->compose(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 205
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v19, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_f3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_1cd

    .line 210
    new-instance v10, Lcom/leff/midi/MidiFile;

    const/16 v21, 0x1e0

    move/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/leff/midi/MidiFile;-><init>(ILjava/util/ArrayList;)V

    .line 214
    .local v10, "midi":Lcom/leff/midi/MidiFile;
    const-string v21, "RingtoneFile"

    const-string v22, "starting file writing"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v11, "midiFile":Ljava/io/File;
    :try_start_127
    invoke-virtual {v10, v11}, Lcom/leff/midi/MidiFile;->writeToFile(Ljava/io/File;)V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_1da

    .line 223
    const-string v21, "RingtoneFile"

    const-string v22, "file writing donw"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_131
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    sget-object v24, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/opera/RingtoneFile;->generateJetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_17b} :catch_1ec

    .line 232
    :goto_17b
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .end local v4    # "DLSFileName":Ljava/lang/String;
    .end local v5    # "JetFileName":Ljava/lang/String;
    .end local v6    # "MIDIFileName":Ljava/lang/String;
    .end local v8    # "jetDir":Ljava/io/File;
    .end local v10    # "midi":Lcom/leff/midi/MidiFile;
    .end local v11    # "midiFile":Ljava/io/File;
    .end local v12    # "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    .end local v14    # "preloadDir":Ljava/io/File;
    .end local v16    # "rtCompose":Lcom/lge/opera/RingtoneCompose;
    .end local v17    # "t":Lcom/leff/midi/event/meta/Tempo;
    .end local v18    # "tempoTrack":Lcom/leff/midi/MidiTrack;
    .end local v19    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    .end local v20    # "ts":Lcom/leff/midi/event/meta/TimeSignature;
    :goto_190
    return-object v21

    .line 161
    :cond_191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v21, v0

    const/16 v22, 0x65

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1ca

    .line 162
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_L1.mid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    .restart local v6    # "MIDIFileName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_L1.jet"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    .restart local v5    # "JetFileName":Ljava/lang/String;
    const-string v4, "Opera_synth_L1.dls"

    .line 165
    .restart local v4    # "DLSFileName":Ljava/lang/String;
    const/4 v9, 0x2

    .line 166
    goto/16 :goto_38

    .line 167
    .end local v4    # "DLSFileName":Ljava/lang/String;
    .end local v5    # "JetFileName":Ljava/lang/String;
    .end local v6    # "MIDIFileName":Ljava/lang/String;
    :cond_1ca
    const/16 v21, 0x0

    goto :goto_190

    .line 207
    .restart local v4    # "DLSFileName":Ljava/lang/String;
    .restart local v5    # "JetFileName":Ljava/lang/String;
    .restart local v6    # "MIDIFileName":Ljava/lang/String;
    .restart local v8    # "jetDir":Ljava/io/File;
    .restart local v12    # "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    .restart local v14    # "preloadDir":Ljava/io/File;
    .restart local v16    # "rtCompose":Lcom/lge/opera/RingtoneCompose;
    .restart local v17    # "t":Lcom/leff/midi/event/meta/Tempo;
    .restart local v18    # "tempoTrack":Lcom/leff/midi/MidiTrack;
    .restart local v19    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    .restart local v20    # "ts":Lcom/leff/midi/event/meta/TimeSignature;
    :cond_1cd
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/leff/midi/MidiTrack;

    .line 208
    .local v13, "nt":Lcom/leff/midi/MidiTrack;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f3

    .line 218
    .end local v13    # "nt":Lcom/leff/midi/MidiTrack;
    .restart local v10    # "midi":Lcom/leff/midi/MidiFile;
    .restart local v11    # "midiFile":Ljava/io/File;
    :catch_1da
    move-exception v7

    .line 219
    .local v7, "e":Ljava/io/IOException;
    const-string v21, "RingtoneFile"

    const-string v22, "file writing failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 221
    const/16 v21, 0x0

    goto :goto_190

    .line 227
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1ec
    move-exception v7

    .line 228
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v21, "RingtoneFile"

    const-string v22, "Jet File writing failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_17b
.end method

.method public fileGenerate(Ljava/lang/String;)Ljava/lang/String;
    .registers 30
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v12, 0x1

    .line 42
    .local v12, "methodNum":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v24, v0

    if-nez v24, :cond_100

    .line 43
    const-string v24, "opera_l0"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    .line 44
    const-string v24, "L0.jet"

    sput-object v24, Lcom/lge/opera/RingtoneFile;->mBackupFilename:Ljava/lang/String;

    .line 45
    const/4 v12, 0x0

    .line 60
    :cond_16
    :goto_16
    new-instance v17, Ljava/io/File;

    sget-object v24, Lcom/lge/opera/RingtoneFile;->mPreloadPath:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v17, "preloadPath":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_43

    .line 62
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    move-result v18

    .line 63
    .local v18, "res":Z
    const-string v24, "RingtoneFile"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "mkdir() returns "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v18    # "res":Z
    :cond_43
    new-instance v16, Ljava/io/File;

    sget-object v24, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v16, "operaPath":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_70

    .line 68
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    move-result v18

    .line 69
    .restart local v18    # "res":Z
    const-string v24, "RingtoneFile"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "mkdir() returns "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v18    # "res":Z
    :cond_70
    new-instance v11, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v11, "jetFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_d0

    .line 75
    const/4 v9, 0x0

    .line 76
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 78
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_98
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9d} :catch_24b
    .catchall {:try_start_98 .. :try_end_9d} :catchall_175

    .line 79
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_9d
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/lge/opera/RingtoneFile;->mBackupPath:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v25, Lcom/lge/opera/RingtoneFile;->mBackupFilename:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b9} :catch_24e
    .catchall {:try_start_9d .. :try_end_b9} :catchall_242

    .line 81
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    const/16 v24, 0x400

    :try_start_bb
    move/from16 v0, v24

    new-array v4, v0, [B

    .line 82
    .local v4, "buf":[B
    const/4 v5, 0x0

    .line 83
    .local v5, "bytesRead":I
    :goto_c0
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c3} :catch_160
    .catchall {:try_start_bb .. :try_end_c3} :catchall_246

    move-result v5

    if-gtz v5, :cond_157

    .line 90
    if-eqz v10, :cond_cb

    .line 91
    :try_start_c8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 94
    :cond_cb
    if-eqz v8, :cond_d0

    .line 95
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d0} :catch_23c

    .line 102
    .end local v4    # "buf":[B
    .end local v5    # "bytesRead":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v24, v0

    if-eqz v24, :cond_e6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_181

    .line 103
    :cond_e6
    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 147
    :goto_ff
    return-object v24

    .line 46
    .end local v11    # "jetFile":Ljava/io/File;
    .end local v16    # "operaPath":Ljava/io/File;
    .end local v17    # "preloadPath":Ljava/io/File;
    :cond_100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11d

    .line 47
    const-string v24, "opera_l0_preview"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    .line 48
    const-string v24, "L0_Preview.jet"

    sput-object v24, Lcom/lge/opera/RingtoneFile;->mBackupFilename:Ljava/lang/String;

    .line 49
    const/4 v12, 0x1

    .line 50
    goto/16 :goto_16

    :cond_11d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13a

    .line 51
    const-string v24, "opera_l1"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    .line 52
    const-string v24, "L1.jet"

    sput-object v24, Lcom/lge/opera/RingtoneFile;->mBackupFilename:Ljava/lang/String;

    .line 53
    const/4 v12, 0x2

    .line 54
    goto/16 :goto_16

    :cond_13a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->mPatternType:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 55
    const-string v24, "opera_l1_preview"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    .line 56
    const-string v24, "L1_Preview.jet"

    sput-object v24, Lcom/lge/opera/RingtoneFile;->mBackupFilename:Ljava/lang/String;

    .line 57
    const/4 v12, 0x3

    goto/16 :goto_16

    .line 84
    .restart local v4    # "buf":[B
    .restart local v5    # "bytesRead":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "jetFile":Ljava/io/File;
    .restart local v16    # "operaPath":Ljava/io/File;
    .restart local v17    # "preloadPath":Ljava/io/File;
    :cond_157
    const/16 v24, 0x0

    :try_start_159
    move/from16 v0, v24

    invoke-virtual {v10, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15e} :catch_160
    .catchall {:try_start_159 .. :try_end_15e} :catchall_246

    goto/16 :goto_c0

    .line 86
    .end local v4    # "buf":[B
    .end local v5    # "bytesRead":I
    :catch_160
    move-exception v6

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .line 87
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_163
    :try_start_163
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_175

    .line 90
    if-eqz v9, :cond_16b

    .line 91
    :try_start_168
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 94
    :cond_16b
    if-eqz v7, :cond_d0

    .line 95
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_170} :catch_172

    goto/16 :goto_d0

    .line 97
    :catch_172
    move-exception v24

    goto/16 :goto_d0

    .line 88
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_175
    move-exception v24

    .line 90
    :goto_176
    if-eqz v9, :cond_17b

    .line 91
    :try_start_178
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 94
    :cond_17b
    if-eqz v7, :cond_180

    .line 95
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_180} :catch_23f

    .line 99
    :cond_180
    :goto_180
    throw v24

    .line 107
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_181
    new-instance v21, Lcom/leff/midi/MidiTrack;

    invoke-direct/range {v21 .. v21}, Lcom/leff/midi/MidiTrack;-><init>()V

    .line 109
    .local v21, "tempoTrack":Lcom/leff/midi/MidiTrack;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v14, "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    new-instance v23, Lcom/leff/midi/event/meta/TimeSignature;

    invoke-direct/range {v23 .. v23}, Lcom/leff/midi/event/meta/TimeSignature;-><init>()V

    .line 114
    .local v23, "ts":Lcom/leff/midi/event/meta/TimeSignature;
    const/16 v24, 0x4

    const/16 v25, 0x4

    const/16 v26, 0x18

    const/16 v27, 0x8

    invoke-virtual/range {v23 .. v27}, Lcom/leff/midi/event/meta/TimeSignature;->setTimeSignature(IIII)V

    .line 116
    new-instance v20, Lcom/leff/midi/event/meta/Tempo;

    invoke-direct/range {v20 .. v20}, Lcom/leff/midi/event/meta/Tempo;-><init>()V

    .line 117
    .local v20, "t":Lcom/leff/midi/event/meta/Tempo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/opera/RingtoneFile;->tempo:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/leff/midi/event/meta/Tempo;->setBpm(F)V

    .line 119
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 120
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/leff/midi/MidiTrack;->insertEvent(Lcom/leff/midi/event/MidiEvent;)V

    .line 124
    new-instance v19, Lcom/lge/opera/RingtoneCompose;

    const/16 v24, 0x1e0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/lge/opera/RingtoneCompose;-><init>(IIII)V

    .line 125
    .local v19, "rtCompose":Lcom/lge/opera/RingtoneCompose;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/lge/opera/RingtoneCompose;->compose(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 131
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v22, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1ea
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_21d

    .line 136
    new-instance v13, Lcom/leff/midi/MidiFile;

    const/16 v24, 0x1e0

    move/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Lcom/leff/midi/MidiFile;-><init>(ILjava/util/ArrayList;)V

    .line 140
    .local v13, "midi":Lcom/leff/midi/MidiFile;
    const-wide/16 v24, 0x3a

    :try_start_1fd
    move-wide/from16 v0, v24

    invoke-virtual {v13, v11, v0, v1}, Lcom/leff/midi/MidiFile;->writeToFile(Ljava/io/File;J)V
    :try_end_202
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_202} :catch_229

    .line 147
    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/lge/opera/RingtoneFile;->mOperaPath:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/opera/RingtoneFile;->mJetFilename:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_ff

    .line 133
    .end local v13    # "midi":Lcom/leff/midi/MidiFile;
    :cond_21d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/leff/midi/MidiTrack;

    .line 134
    .local v15, "nt":Lcom/leff/midi/MidiTrack;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ea

    .line 141
    .end local v15    # "nt":Lcom/leff/midi/MidiTrack;
    .restart local v13    # "midi":Lcom/leff/midi/MidiFile;
    :catch_229
    move-exception v6

    .line 142
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v24, "RingtoneFile"

    const-string v25, "File writing failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 144
    const/16 v24, 0x0

    goto/16 :goto_ff

    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "midi":Lcom/leff/midi/MidiFile;
    .end local v14    # "noteTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    .end local v19    # "rtCompose":Lcom/lge/opera/RingtoneCompose;
    .end local v20    # "t":Lcom/leff/midi/event/meta/Tempo;
    .end local v21    # "tempoTrack":Lcom/leff/midi/MidiTrack;
    .end local v22    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/leff/midi/MidiTrack;>;"
    .end local v23    # "ts":Lcom/leff/midi/event/meta/TimeSignature;
    .restart local v4    # "buf":[B
    .restart local v5    # "bytesRead":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_23c
    move-exception v24

    goto/16 :goto_d0

    .end local v4    # "buf":[B
    .end local v5    # "bytesRead":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_23f
    move-exception v25

    goto/16 :goto_180

    .line 88
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_242
    move-exception v24

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_176

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_246
    move-exception v24

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_176

    .line 86
    :catch_24b
    move-exception v6

    goto/16 :goto_163

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_24e
    move-exception v6

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_163
.end method
