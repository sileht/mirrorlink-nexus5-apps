.class public Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAY_ACTION_STATE_PAUSED:I = 0x3

.field public static final PLAY_ACTION_STATE_PLAYING:I = 0x2

.field public static final PLAY_ACTION_STATE_STOPPED:I = 0x0

.field public static final PLAY_ACTION_STATE_TRANSITIONING:I = 0x1

.field public static final PLAY_ACTION_STOP_REASON_CANCELED:I = 0x2

.field public static final PLAY_ACTION_STOP_REASON_ERROR:I = 0x4

.field public static final PLAY_ACTION_STOP_REASON_FINISHED:I = 0x1

.field public static final PLAY_ACTION_STOP_REASON_INTERRUPTED:I = 0x3

.field public static final PLAY_ACTION_STOP_REASON_NONE:I = 0x0

.field public static final PLAY_ACTION_TYPE_GET_VOLUME:I = 0xb

.field public static final PLAY_ACTION_TYPE_PAUSE:I = 0x2

.field public static final PLAY_ACTION_TYPE_PLAY:I = 0x0

.field public static final PLAY_ACTION_TYPE_RESUME:I = 0x3

.field public static final PLAY_ACTION_TYPE_SEEK:I = 0x4

.field public static final PLAY_ACTION_TYPE_SET_VOLUME:I = 0xa

.field public static final PLAY_ACTION_TYPE_STOP:I = 0x1

.field public static final PLAY_ACTION_TYPE_VOLUME_DOWN:I = 0x6

.field public static final PLAY_ACTION_TYPE_VOLUME_GET_MUTE:I = 0x9

.field public static final PLAY_ACTION_TYPE_VOLUME_MUTE:I = 0x7

.field public static final PLAY_ACTION_TYPE_VOLUME_UNMUTE:I = 0x8

.field public static final PLAY_ACTION_TYPE_VOLUME_UP:I = 0x5


# instance fields
.field public currentPosition:I

.field public currentVolume:I

.field public isMute:Z

.field public maxPosition:I

.field public maxVolume:I

.field public minVolume:I

.field public state:I

.field public stopReason:I

.field public supportedPlayActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volumeStep:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 981
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 992
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    .line 868
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    .line 875
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->stopReason:I

    .line 882
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->minVolume:I

    .line 889
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxVolume:I

    .line 896
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->volumeStep:I

    .line 903
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    .line 910
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->isMute:Z

    .line 917
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    .line 924
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    .line 928
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    .line 868
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    .line 875
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->stopReason:I

    .line 882
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->minVolume:I

    .line 889
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxVolume:I

    .line 896
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->volumeStep:I

    .line 903
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    .line 910
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->isMute:Z

    .line 917
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    .line 924
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    .line 931
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 932
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 964
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->minVolume:I

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxVolume:I

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->volumeStep:I

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    :goto_30
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->isMute:Z

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->stopReason:I

    .line 974
    return-void

    .line 970
    :cond_45
    const/4 v0, 0x0

    goto :goto_30
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 951
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->supportedPlayActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 952
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->minVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->volumeStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->isMute:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->maxPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->currentPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;->stopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    return-void

    .line 957
    :cond_36
    const/4 v0, 0x0

    goto :goto_23
.end method
