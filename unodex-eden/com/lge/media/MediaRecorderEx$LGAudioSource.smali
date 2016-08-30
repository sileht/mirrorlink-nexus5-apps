.class public Lcom/lge/media/MediaRecorderEx$LGAudioSource;
.super Ljava/lang/Object;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaRecorderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LGAudioSource"
.end annotation


# static fields
.field public static FM_RX:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 174
    :try_start_0
    const-string v4, "android.media.MediaRecorder$AudioSource"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, "c":Ljava/lang/Class;
    const-string v4, "FM_RX"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 176
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 177
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 178
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/lge/media/MediaRecorderEx$LGAudioSource;->FM_RX:I

    .line 179
    const-string v4, "ro.lge.chip.vendor"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mtk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 180
    const/16 v4, 0x63

    sput v4, Lcom/lge/media/MediaRecorderEx$LGAudioSource;->FM_RX:I

    .line 182
    :cond_31
    const-string v4, "LGMediaRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FM_RX : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/lge/media/MediaRecorderEx$LGAudioSource;->FM_RX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    .line 187
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_47
    return-void

    .line 184
    :catch_48
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LGMediaRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FM_RX Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
