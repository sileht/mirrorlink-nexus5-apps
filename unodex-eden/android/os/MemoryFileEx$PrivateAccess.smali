.class public Landroid/os/MemoryFileEx$PrivateAccess;
.super Ljava/lang/Object;
.source "MemoryFileEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFileEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateAccess"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/os/MemoryFileEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_os_MemoryFileEx$PrivateAccess$1$5a4f6014proceed(Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/os/MemoryFileEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_os_MemoryFileEx$PrivateAccess$2$ea9ab6f9proceed(Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "this"    # Landroid/os/MemoryFileEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic ajc$around$android_os_MemoryFileEx$PrivateAccess$3$66175b4proceed(Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 4
    .param p0, "this"    # Landroid/os/MemoryFileEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->longValue(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic ajc$around$android_os_MemoryFileEx$PrivateAccess$4$c8f3e921proceed(Landroid/os/MemoryFileEx;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "this"    # Landroid/os/MemoryFileEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$android_os_MemoryFileEx$PrivateAccess$5$5d76084bproceed(Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Landroid/os/MemoryFileEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$android_os_MemoryFileEx$PrivateAccess$6$2d797eb0proceed(Landroid/os/MemoryFileEx;JLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "this"    # Landroid/os/MemoryFileEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$PROT_READ(Landroid/os/MemoryFileEx;)I
    .registers 2

    invoke-static {p0}, Landroid/os/MemoryFileEx;->ajc$get$PROT_READ(Landroid/os/MemoryFileEx;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mAddress(Landroid/os/MemoryFileEx;)J
    .registers 3

    invoke-static {p0}, Landroid/os/MemoryFileEx;->ajc$get$mAddress(Landroid/os/MemoryFileEx;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mFD(Landroid/os/MemoryFileEx;)Ljava/io/FileDescriptor;
    .registers 2

    invoke-static {p0}, Landroid/os/MemoryFileEx;->ajc$get$mFD(Landroid/os/MemoryFileEx;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mLength(Landroid/os/MemoryFileEx;)I
    .registers 2

    invoke-static {p0}, Landroid/os/MemoryFileEx;->ajc$get$mLength(Landroid/os/MemoryFileEx;)I

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$PROT_READ(Landroid/os/MemoryFileEx;)V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method public static ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mAddress(Landroid/os/MemoryFileEx;)V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method public static ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mFD(Landroid/os/MemoryFileEx;)V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method public static ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mLength(Landroid/os/MemoryFileEx;)V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$PROT_READ(Landroid/os/MemoryFileEx;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/MemoryFileEx;->ajc$set$PROT_READ(Landroid/os/MemoryFileEx;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mAddress(Landroid/os/MemoryFileEx;J)V
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/os/MemoryFileEx;->ajc$set$mAddress(Landroid/os/MemoryFileEx;J)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mFD(Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/MemoryFileEx;->ajc$set$mFD(Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mLength(Landroid/os/MemoryFileEx;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/MemoryFileEx;->ajc$set$mLength(Landroid/os/MemoryFileEx;I)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/os/MemoryFileEx$PrivateAccess;

    invoke-direct {v0}, Landroid/os/MemoryFileEx$PrivateAccess;-><init>()V

    sput-object v0, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/os/MemoryFileEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Landroid/os/MemoryFileEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/os/MemoryFileEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_os_MemoryFileEx$PrivateAccess"

    sget-object v2, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/os/MemoryFileEx$PrivateAccess;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$perSingletonInstance:Landroid/os/MemoryFileEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_os_MemoryFileEx$PrivateAccess$1$5a4f6014(Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p1, "ob"    # Landroid/os/MemoryFileEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ob,ajc$aroundClosure"
        value = "(within(MemoryFileEx) && (get(private int MemoryFileEx.PROT_READ) && target(ob)))"
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Landroid/os/MemoryFile;->ajc$get$PROT_READ()I

    move-result v0

    return v0
.end method

.method public ajc$around$android_os_MemoryFileEx$PrivateAccess$2$ea9ab6f9(Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/io/FileDescriptor;
    .registers 4
    .param p1, "ob"    # Landroid/os/MemoryFileEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ob,ajc$aroundClosure"
        value = "(within(MemoryFileEx) && (get(private FileDescriptor MemoryFileEx.mFD) && target(ob)))"
    .end annotation

    .prologue
    .line 115
    invoke-static {p1}, Landroid/os/MemoryFile;->ajc$get$mFD(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$android_os_MemoryFileEx$PrivateAccess$3$66175b4(Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 5
    .param p1, "ob"    # Landroid/os/MemoryFileEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ob,ajc$aroundClosure"
        value = "(within(MemoryFileEx) && (get(private long MemoryFileEx.mAddress) && target(ob)))"
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Landroid/os/MemoryFile;->ajc$get$mAddress(Landroid/os/MemoryFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public ajc$around$android_os_MemoryFileEx$PrivateAccess$4$c8f3e921(Landroid/os/MemoryFileEx;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "ob"    # Landroid/os/MemoryFileEx;
    .param p2, "val"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ob,val,ajc$aroundClosure"
        value = "(within(MemoryFileEx) && (set(private int MemoryFileEx.mLength) && (target(ob) && args(val))))"
    .end annotation

    .prologue
    .line 123
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->ajc$set$mLength(Landroid/os/MemoryFile;I)V

    .line 124
    return-void
.end method

.method public ajc$around$android_os_MemoryFileEx$PrivateAccess$5$5d76084b(Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "ob"    # Landroid/os/MemoryFileEx;
    .param p2, "val"    # Ljava/io/FileDescriptor;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ob,val,ajc$aroundClosure"
        value = "(target(ob) && (within(MemoryFileEx) && (set(private FileDescriptor MemoryFileEx.mFD) && args(val))))"
    .end annotation

    .prologue
    .line 128
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->ajc$set$mFD(Landroid/os/MemoryFile;Ljava/io/FileDescriptor;)V

    .line 129
    return-void
.end method

.method public ajc$around$android_os_MemoryFileEx$PrivateAccess$6$2d797eb0(Landroid/os/MemoryFileEx;JLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "ob"    # Landroid/os/MemoryFileEx;
    .param p2, "val"    # J
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ob,val,ajc$aroundClosure"
        value = "(target(ob) && (within(MemoryFileEx) && (set(private long MemoryFileEx.mAddress) && args(val))))"
    .end annotation

    .prologue
    .line 133
    invoke-static {p1, p2, p3}, Landroid/os/MemoryFile;->ajc$set$mAddress(Landroid/os/MemoryFile;J)V

    .line 134
    return-void
.end method
