.class public Lcom/lge/systemservice/core/LeccpInfo$Card;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Card"
.end annotation


# static fields
.field public static final CONNECTION_STATE_AVAILABLE:I = 0x1

.field public static final CONNECTION_STATE_CONNECTED:I = 0x3

.field public static final CONNECTION_STATE_CONNECTING:I = 0x2

.field public static final CONNECTION_STATE_PAIRED:I = 0x4

.field public static final CONNECTION_STATE_UNAVAILABLE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Card;",
            ">;"
        }
    .end annotation
.end field

.field public static final DETAIL_STATE_MIRRORING:I = 0x2

.field public static final DETAIL_STATE_PLAYING:I = 0x1

.field public static final DETAIL_STATE_TRANSFERRING:I = 0x3

.field public static final DETAIL_STATE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_BT:I = 0x1

.field public static final NETWORK_TYPE_P2P:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action;",
            ">;"
        }
    .end annotation
.end field

.field public addedDate:J

.field public batteryPercent:I

.field public connectionState:I

.field public detailState:I

.field public deviceType:I

.field public groupId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public networkType:I

.field public serviceId:Ljava/lang/String;

.field public serviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 381
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Card$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Card$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Card;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 389
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    .line 250
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    .line 258
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    .line 271
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    .line 289
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    .line 317
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    .line 250
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    .line 258
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    .line 271
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    .line 289
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    .line 317
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    .line 324
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Card;->readFromParcel(Landroid/os/Parcel;)V

    .line 325
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    move-object v0, v1

    :goto_12
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    move-object v0, v1

    :goto_25
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    :goto_37
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    sget-object v1, Lcom/lge/systemservice/core/LeccpInfo$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    .line 374
    return-void

    .line 360
    :cond_71
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    goto :goto_12

    .line 362
    :cond_74
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    goto :goto_25

    .line 364
    :cond_77
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    goto :goto_37
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    if-nez v0, :cond_49

    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    if-nez v0, :cond_4c

    const-string v0, ""

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    if-nez v0, :cond_4f

    const-string v0, ""

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->addedDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->connectionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->detailState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->actions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 354
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->batteryPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    return-void

    .line 344
    :cond_49
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->id:Ljava/lang/String;

    goto :goto_6

    .line 345
    :cond_4c
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->name:Ljava/lang/String;

    goto :goto_f

    .line 346
    :cond_4f
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Card;->groupId:Ljava/lang/String;

    goto :goto_18
.end method
