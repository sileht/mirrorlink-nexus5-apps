.class public Landroid/nfc/cardemulation/AApduServiceInfo;
.super Ljava/lang/Object;
.source "AApduServiceInfo.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AApduServiceInfo.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/nfc/cardemulation/AApduServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 18
    :goto_3
    return-void

    .line 16
    :catch_4
    move-exception v0

    sput-object v0, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$2$18865128proceed(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 4
    .param p0, "this"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$3$3bc0a089proceed(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "this"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$4$9693800cproceed(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "this"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$5$9d93e510proceed(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$6$6c50bde9proceed(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$7$abaf528eproceed(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 5
    .param p0, "this"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$8$b55f820cproceed(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 5
    .param p0, "this"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method static synthetic ajc$around$android_nfc_cardemulation_AApduServiceInfo$9$580ca677proceed(Landroid/nfc/cardemulation/ApduServiceInfo;ZLorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 6
    .param p0, "this"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_AApduServiceInfo$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Landroid/nfc/cardemulation/AApduServiceInfo;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_AApduServiceInfo$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/cardemulation/AApduServiceInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mService(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_AApduServiceInfo$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Landroid/nfc/cardemulation/AApduServiceInfo;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_AApduServiceInfo$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/nfc/cardemulation/AApduServiceInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mService(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/content/pm/ResolveInfo;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->ajc$get$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->ajc$get$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 2

    invoke-static {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->ajc$get$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 21
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interFieldInit$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static ajc$interFieldInit$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->ajc$set$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->ajc$set$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->ajc$set$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/nfc/cardemulation/AApduServiceInfo;

    invoke-direct {v0}, Landroid/nfc/cardemulation/AApduServiceInfo;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AApduServiceInfo;

    return-void
.end method

.method public static aspectOf()Landroid/nfc/cardemulation/AApduServiceInfo;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AApduServiceInfo;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_nfc_cardemulation_AApduServiceInfo"

    sget-object v2, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AApduServiceInfo;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$perSingletonInstance:Landroid/nfc/cardemulation/AApduServiceInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 2
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "hashcode"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 p0, 0x0

    .line 139
    .end local p0    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_3
    return-object p0

    .line 138
    .restart local p0    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4
    invoke-static {p0, p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static setBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 2
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "banner"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 p0, 0x0

    .line 131
    .end local p0    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_3
    return-object p0

    .line 130
    .restart local p0    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4
    invoke-static {p0, p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public static setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 2
    .param p0, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p1, "isStaticService"    # Z

    .prologue
    .line 143
    if-nez p0, :cond_4

    .line 144
    const/4 p0, 0x0

    .line 147
    .end local p0    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_3
    return-object p0

    .line 146
    .restart local p0    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4
    invoke-static {p0, p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldSetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)V

    goto :goto_3
.end method


# virtual methods
.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$2$18865128(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 13
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p3, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "source,ajc$aroundClosure"
        value = "(execution(* *.createFromParcel(..)) && (args(source) && within(ApduServiceInfo+)))"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_32

    move v4, v5

    .line 47
    .local v4, "isBitmapResourceused":Z
    :goto_9
    const/4 v0, 0x0

    .line 48
    .local v0, "banner":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1a

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 50
    .local v6, "size":I
    new-array v1, v6, [B

    .line 51
    .local v1, "bannerArray":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 52
    array-length v8, v1

    invoke-static {v1, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .end local v1    # "bannerArray":[B
    .end local v6    # "size":I
    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_34

    .line 56
    .local v5, "isStaticService":Z
    :goto_24
    invoke-static {p1, p2}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$around$android_nfc_cardemulation_AApduServiceInfo$2$18865128proceed(Landroid/os/Parcel;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 57
    .local v3, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-static {v3, v0}, Landroid/nfc/cardemulation/AApduServiceInfo;->setBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 58
    invoke-static {v3, v2}, Landroid/nfc/cardemulation/AApduServiceInfo;->setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 59
    invoke-static {v3, v5}, Landroid/nfc/cardemulation/AApduServiceInfo;->setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 60
    return-object v3

    .end local v0    # "banner":Landroid/graphics/Bitmap;
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "isBitmapResourceused":Z
    .end local v5    # "isStaticService":Z
    :cond_32
    move v4, v7

    .line 44
    goto :goto_9

    .restart local v0    # "banner":Landroid/graphics/Bitmap;
    .restart local v2    # "hash":Ljava/lang/String;
    .restart local v4    # "isBitmapResourceused":Z
    :cond_34
    move v5, v7

    .line 55
    goto :goto_24
.end method

.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$3$3bc0a089(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p4, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,pm,ajc$aroundClosure"
        value = "(execution(* ApduServiceInfo.loadBanner(PackageManager)) && (target(info) && args(pm)))"
    .end annotation

    .prologue
    .line 65
    invoke-static {p1, p2, p3}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$around$android_nfc_cardemulation_AApduServiceInfo$3$3bc0a089proceed(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    .local v1, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_7

    .line 74
    .end local v1    # "ret":Landroid/graphics/drawable/Drawable;
    :goto_6
    return-object v1

    .line 70
    .restart local v1    # "ret":Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_7
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$inlineAccessFieldGet$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mService(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "ret":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 73
    .end local v0    # "res":Landroid/content/res/Resources;
    :catch_1d
    move-exception v2

    const-string v2, "AApduServiceInfo.aj"

    const-string v3, "Could not bitmap banner."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$4$9693800c(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p3, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,ajc$aroundClosure"
        value = "(execution(Bitmap ApduServiceInfoEx.loadBitmapBanner(ApduServiceInfo)) && args(info))"
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_4

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$5$9d93e510(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 5
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p3, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,ajc$aroundClosure"
        value = "(execution(String ApduServiceInfoEx.getBannerHashCode(ApduServiceInfo)) && args(info))"
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_4

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$6$6c50bde9(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 5
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p3, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,ajc$aroundClosure"
        value = "(execution(boolean ApduServiceInfoEx.isStaticService(ApduServiceInfo)) && args(info))"
    .end annotation

    .prologue
    .line 96
    if-nez p1, :cond_4

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v0

    goto :goto_3
.end method

.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$7$abaf528e(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 6
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p4, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,bitmap,ajc$aroundClosure"
        value = "(execution(ApduServiceInfo ApduServiceInfoEx.setBitmapBanner(ApduServiceInfo, Bitmap)) && args(info, bitmap))"
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_4

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1, p2}, Landroid/nfc/cardemulation/AApduServiceInfo;->setBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    goto :goto_3
.end method

.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$8$b55f820c(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 6
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "hashcode"    # Ljava/lang/String;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p4, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,hashcode,ajc$aroundClosure"
        value = "(execution(ApduServiceInfo ApduServiceInfoEx.setBannerHashCode(ApduServiceInfo, String)) && args(info, hashcode))"
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_4

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1, p2}, Landroid/nfc/cardemulation/AApduServiceInfo;->setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    goto :goto_3
.end method

.method public ajc$around$android_nfc_cardemulation_AApduServiceInfo$9$580ca677(Landroid/nfc/cardemulation/ApduServiceInfo;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 6
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "isStaticService"    # Z
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p4, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "info,isStaticService,ajc$aroundClosure"
        value = "(execution(ApduServiceInfo ApduServiceInfoEx.setStaticService(ApduServiceInfo, boolean)) && args(info, isStaticService))"
    .end annotation

    .prologue
    .line 120
    if-nez p1, :cond_4

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1, p2}, Landroid/nfc/cardemulation/AApduServiceInfo;->setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    goto :goto_3
.end method

.method public ajc$before$android_nfc_cardemulation_AApduServiceInfo$1$c66078ad(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/os/Parcel;ILorg/aspectj/lang/JoinPoint;)V
    .registers 12
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .param p4, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "info,dest,flags"
        value = "(execution(void ApduServiceInfo.writeToParcel(Parcel, int)) && (args(dest, flags) && target(info)))"
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3e

    move v2, v3

    :goto_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 30
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerResourceBitmap(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 32
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 33
    .local v0, "bannerArray":[B
    array-length v2, v0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 38
    .end local v0    # "bannerArray":[B
    .end local v1    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_2d
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Landroid/nfc/cardemulation/AApduServiceInfo;->ajc$interFieldGetDispatch$android_nfc_cardemulation_AApduServiceInfo$android_nfc_cardemulation_ApduServiceInfo$mIsStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v2

    if-eqz v2, :cond_40

    :goto_3a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void

    :cond_3e
    move v2, v4

    .line 27
    goto :goto_9

    :cond_40
    move v3, v4

    .line 39
    goto :goto_3a
.end method
