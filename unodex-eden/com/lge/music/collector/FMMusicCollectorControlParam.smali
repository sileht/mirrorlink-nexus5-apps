.class public Lcom/lge/music/collector/FMMusicCollectorControlParam;
.super Ljava/lang/Object;
.source "FMMusicCollectorControlParam.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TARS_ControlParam"


# instance fields
.field private final CMD_RESET_TARS:I

.field private final CMD_STOP_TARS_WRITING:I

.field private mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/media/MediaRecorderEx;)V
    .registers 3
    .param p1, "mr"    # Lcom/lge/media/MediaRecorderEx;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0xb

    iput v0, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->CMD_STOP_TARS_WRITING:I

    .line 37
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->CMD_RESET_TARS:I

    .line 52
    iput-object p1, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    .line 53
    return-void
.end method

.method private resetTars()V
    .registers 3

    .prologue
    .line 142
    const-string v0, "TARS_ControlParam"

    const-string v1, "resetTars"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const-string v1, "lg-param-cmd=TARS-RESET"

    invoke-virtual {v0, v1}, Lcom/lge/media/MediaRecorderEx;->setParameter(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private stopTarsWriting()V
    .registers 7

    .prologue
    .line 125
    const-string v1, "TARS_ControlParam"

    const-string v2, "stopTarsWriting"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const-string v2, "lg-param-cmd=TARS-STOP-WRITING"

    invoke-virtual {v1, v2}, Lcom/lge/media/MediaRecorderEx;->setParameter(Ljava/lang/String;)V

    .line 130
    const-string v1, "TARS_ControlParam"

    const-string v2, "Delete zero byte or uncompleted file"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "sampleFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3f

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    const-string v1, "TARS_ControlParam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3f
    return-void
.end method


# virtual methods
.method public TarsCommand(I)V
    .registers 5
    .param p1, "cmd"    # I

    .prologue
    .line 106
    const-string v0, "TARS_ControlParam"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TarsCommand() cmd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1c

    .line 109
    invoke-direct {p0}, Lcom/lge/music/collector/FMMusicCollectorControlParam;->stopTarsWriting()V

    .line 118
    :goto_1b
    return-void

    .line 111
    :cond_1c
    const/16 v0, 0xc

    if-ne p1, v0, :cond_24

    .line 112
    invoke-direct {p0}, Lcom/lge/music/collector/FMMusicCollectorControlParam;->resetTars()V

    goto :goto_1b

    .line 116
    :cond_24
    const-string v0, "TARS_ControlParam"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Unknown Command : cmd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public TarsSetOutputFile(Ljava/lang/String;J)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "max_filesize_bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v1, "TARS_ControlParam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TarsSetOutputFile() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p1, :cond_4e

    .line 70
    iput-object p1, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mPath:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v1, p2, p3}, Lcom/lge/media/MediaRecorderEx;->setMaxFileSize(J)V

    .line 77
    :try_start_27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_3e

    .line 79
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_2c
    iget-object v1, p0, Lcom/lge/music/collector/FMMusicCollectorControlParam;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/media/MediaRecorderEx;->setOutputFileFD(Ljava/io/FileDescriptor;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_39

    .line 81
    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 95
    return-void

    .line 80
    :catchall_39
    move-exception v1

    .line 81
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 82
    throw v1
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_3e

    .line 86
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_3e
    move-exception v1

    const-string v1, "TARS_ControlParam"

    const-string v2, "File creation error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File creation error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_4e
    const-string v1, "TARS_ControlParam"

    const-string v2, "path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No valid output file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
