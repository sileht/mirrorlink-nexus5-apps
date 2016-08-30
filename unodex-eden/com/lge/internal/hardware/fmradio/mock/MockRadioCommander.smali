.class public Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;
.super Ljava/lang/Object;
.source "MockRadioCommander.java"


# static fields
.field public static DEFAULT_FREQUENCY:I = 0x0

.field public static FREQ_MAX:I = 0x0

.field public static FREQ_MIN:I = 0x0

.field private static final T:Ljava/lang/String; = "FMFRW_MockRadioCommander"


# instance fields
.field private autoScanThread:Ljava/lang/Thread;

.field private currentFreq:I

.field private interrupt:Z

.field isOnAutoScan:Z

.field private mContext:Landroid/content/Context;

.field radioPowerState:Z

.field toActivity:Landroid/os/Messenger;

.field private virtualRadioChannel:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x222e

    .line 60
    const/16 v0, 0x29cc

    sput v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->FREQ_MAX:I

    .line 61
    sput v1, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->FREQ_MIN:I

    .line 62
    sput v1, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->DEFAULT_FREQUENCY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->radioPowerState:Z

    .line 20
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->isOnAutoScan:Z

    .line 21
    iput-object v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->mContext:Landroid/content/Context;

    .line 22
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z

    .line 24
    iput-object v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->autoScanThread:Ljava/lang/Thread;

    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    .line 57
    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    .line 58
    sget v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->DEFAULT_FREQUENCY:I

    iput v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->currentFreq:I

    .line 65
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->mContext:Landroid/content/Context;

    .line 66
    return-void

    .line 25
    nop

    :array_20
    .array-data 4
        0x222e
        0x2260
        0x2292
        0x22c4
        0x22f6
        0x2328
        0x235a
        0x238c
        0x23be
        0x23f0
        0x2422
        0x2454
        0x2486
        0x24b8
        0x24ea
        0x251c
        0x254e
        0x2580
        0x25b2
        0x25e4
        0x2616
        0x2648
        0x26ac
        0x2710
        0x2774
        0x27d8
        0x283c
        0x28a0
        0x2904
        0x2968
        0x29cc
        0x2a30
    .end array-data
.end method

.method static synthetic access$0(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)[I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;Z)V
    .registers 2

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z

    return-void
.end method


# virtual methods
.method public getRadioPowerState()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->mContext:Landroid/content/Context;

    if-nez v1, :cond_8

    .line 109
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->radioPowerState:Z

    .line 113
    :cond_7
    :goto_7
    return v0

    .line 112
    :cond_8
    iget-boolean v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->radioPowerState:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public interuptAutoScanThread()V
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z

    .line 118
    return-void
.end method

.method public searchIndex()F
    .registers 7

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "i":I
    :goto_1
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_7

    .line 157
    int-to-float v1, v0

    :goto_6
    return v1

    .line 153
    :cond_7
    iget v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->currentFreq:I

    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_11

    int-to-float v1, v0

    goto :goto_6

    .line 154
    :cond_11
    iget v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->currentFreq:I

    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_21

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_6

    .line 155
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V
    .registers 6
    .param p1, "message"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .prologue
    const/4 v3, 0x0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "msg":Landroid/os/Message;
    :try_start_a
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->toActivity:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 203
    :goto_f
    return-void

    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V
    .registers 7
    .param p1, "message"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p2, "arg1"    # I

    .prologue
    .line 206
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, "msg":Landroid/os/Message;
    :try_start_a
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->toActivity:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 212
    :goto_f
    return-void

    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .registers 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->toActivity:Landroid/os/Messenger;

    .line 70
    return-void
.end method

.method public setband()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public startAutoScan()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->isOnAutoScan:Z

    .line 162
    iput-boolean v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z

    .line 164
    sget v2, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->DEFAULT_FREQUENCY:I

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->tuneFrequency(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 166
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;

    invoke-direct {v2, p0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;-><init>(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->autoScanThread:Ljava/lang/Thread;

    .line 189
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->autoScanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 192
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    goto :goto_1f
.end method

.method public startBackwardScan()Z
    .registers 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->searchIndex()F

    move-result v1

    .line 139
    .local v1, "i":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1b

    .line 140
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v1, v3

    float-to-int v3, v3

    aget v0, v2, v3

    .line 141
    .local v0, "freq":I
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    .line 146
    :goto_17
    iput v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->currentFreq:I

    .line 147
    const/4 v2, 0x1

    return v2

    .line 143
    .end local v0    # "freq":I
    :cond_1b
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    const/16 v3, 0x1f

    aget v0, v2, v3

    .line 144
    .restart local v0    # "freq":I
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    goto :goto_17
.end method

.method public startForwardScan()Z
    .registers 6

    .prologue
    .line 121
    const-string v2, "FMFRW_MockRadioCommander"

    const-string v3, "startForwardScan()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->searchIndex()F

    move-result v1

    .line 124
    .local v1, "i":F
    const-string v2, "FMFRW_MockRadioCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searchIndex()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/high16 v2, 0x41f80000    # 31.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_36

    .line 126
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    float-to-int v3, v3

    aget v0, v2, v3

    .line 127
    .local v0, "freq":I
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    .line 132
    :goto_32
    iput v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->currentFreq:I

    .line 133
    const/4 v2, 0x1

    return v2

    .line 129
    .end local v0    # "freq":I
    :cond_36
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 130
    .restart local v0    # "freq":I
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    goto :goto_32
.end method

.method public tuneFrequency(I)Z
    .registers 5
    .param p1, "nFreq"    # I

    .prologue
    .line 93
    const-string v0, "FMFRW_MockRadioCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tuneFrequency("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->FREQ_MAX:I

    if-le p1, v0, :cond_29

    sget v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->FREQ_MIN:I

    if-ge p1, v0, :cond_29

    .line 95
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_28
    return v0

    .line 98
    :cond_29
    iput p1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->currentFreq:I

    .line 99
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v0, p1}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    .line 100
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public turnOff()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->radioPowerState:Z

    if-eqz v1, :cond_d

    .line 84
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->radioPowerState:Z

    .line 85
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 87
    const/4 v0, 0x1

    .line 89
    :cond_d
    return v0
.end method

.method turnOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-boolean v1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->radioPowerState:Z

    if-nez v1, :cond_d

    .line 74
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->radioPowerState:Z

    .line 75
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v1}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 79
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
