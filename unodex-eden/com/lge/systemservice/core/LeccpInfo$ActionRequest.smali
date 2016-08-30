.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
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
    name = "ActionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionType:I

.field public connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

.field public onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

.field public openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

.field public playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

.field public transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1430
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1441
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1320
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1327
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1334
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1341
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1348
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1376
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1377
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .prologue
    const/4 v1, 0x0

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1320
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1327
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1334
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1341
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1348
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1351
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1352
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1353
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .prologue
    const/4 v1, 0x0

    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1320
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1327
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1334
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1341
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1348
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1371
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1372
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1373
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .prologue
    const/4 v1, 0x0

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1320
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1327
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1334
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1341
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1348
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1366
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1367
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1368
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1320
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1327
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1334
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1341
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1348
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1356
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1357
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1358
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .prologue
    const/4 v1, 0x0

    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1320
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1327
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1334
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1341
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1348
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1361
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1362
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1363
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1412
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 1413
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1423
    :cond_19
    :goto_19
    return-void

    .line 1414
    :cond_1a
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    if-nez v0, :cond_2d

    .line 1415
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    goto :goto_19

    .line 1416
    :cond_2d
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    .line 1417
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    goto :goto_19

    .line 1418
    :cond_41
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_55

    .line 1419
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    goto :goto_19

    .line 1420
    :cond_55
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 1421
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    goto :goto_19
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1381
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 1396
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 1398
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1408
    :cond_10
    :goto_10
    return-void

    .line 1399
    :cond_11
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    if-nez v0, :cond_1b

    .line 1400
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_10

    .line 1401
    :cond_1b
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    if-ne v0, v2, :cond_25

    .line 1402
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_10

    .line 1403
    :cond_25
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    .line 1404
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_10

    .line 1405
    :cond_30
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 1406
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_10
.end method
