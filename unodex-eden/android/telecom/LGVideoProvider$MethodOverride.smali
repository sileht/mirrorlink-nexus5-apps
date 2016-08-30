.class public Landroid/telecom/LGVideoProvider$MethodOverride;
.super Ljava/lang/Object;
.source "LGVideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodOverride"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/telecom/LGVideoProvider$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 703
    :try_start_0
    invoke-static {}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;
    .registers 2

    invoke-static {p0}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->ajc$get$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V
    .registers 1

    .prologue
    .line 704
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->ajc$set$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;)V

    return-void
.end method

.method public static ajc$interMethod$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$onTransact(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p0, "ajc$this_"    # Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 724
    const/4 v1, 0x1

    .line 725
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "ifaceName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 729
    if-eqz v0, :cond_25

    invoke-static {p0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interFieldGetDispatch$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 730
    invoke-static {p0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interFieldGetDispatch$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 734
    :goto_24
    return v1

    .line 732
    :cond_25
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->ajc$superDispatch$android_telecom_Connection$VideoProvider$VideoProviderBinder$onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_24
.end method

.method public static ajc$interMethod$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 708
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$onTransact(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p0, "ajc$this_"    # Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V
    .registers 2
    .param p0, "ajc$this_"    # Landroid/telecom/Connection$VideoProvider;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$VideoProvider;->postMessageForVideoProviderEx(Landroid/os/Message;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/telecom/LGVideoProvider$MethodOverride;

    invoke-direct {v0}, Landroid/telecom/LGVideoProvider$MethodOverride;-><init>()V

    sput-object v0, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$perSingletonInstance:Landroid/telecom/LGVideoProvider$MethodOverride;

    return-void
.end method

.method public static aspectOf()Landroid/telecom/LGVideoProvider$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$perSingletonInstance:Landroid/telecom/LGVideoProvider$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_telecom_LGVideoProvider$MethodOverride"

    sget-object v2, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$perSingletonInstance:Landroid/telecom/LGVideoProvider$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$perSingletonInstance:Landroid/telecom/LGVideoProvider$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$android_telecom_LGVideoProvider$MethodOverride$1$8dd80247(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V
    .registers 4
    .param p1, "provider"    # Landroid/telecom/Connection$VideoProvider;
    .param p2, "obj"    # Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "provider,obj"
        value = "(execution(Connection.VideoProvider.VideoProviderBinder.new(..)) && (this(obj) && args(provider, ..)))"
    .end annotation

    .prologue
    .line 715
    new-instance v0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;

    invoke-direct {v0, p1}, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;-><init>(Landroid/telecom/Connection$VideoProvider;)V

    invoke-static {p2, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interFieldSetDispatch$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$VideoProviderBinder$mBinderEx(Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;)V

    .line 716
    return-void
.end method
