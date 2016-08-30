.class public Landroid/os/MemoryFileEx;
.super Landroid/os/MemoryFile;
.source "MemoryFileEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFileEx$PrivateAccess;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private PROT_READ:I

.field private mAddress:J

.field private mFD:Ljava/io/FileDescriptor;

.field private mLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "MemoryFileEx"

    sput-object v0, Landroid/os/MemoryFileEx;->TAG:Ljava/lang/String;

    .line 41
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;II)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "length"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$PROT_READ(Landroid/os/MemoryFileEx;)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mFD(Landroid/os/MemoryFileEx;)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mAddress(Landroid/os/MemoryFileEx;)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mLength(Landroid/os/MemoryFileEx;)V

    .line 77
    if-nez p1, :cond_1b

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File descriptor is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1b
    invoke-static {p1}, Landroid/os/MemoryFileEx;->isMemoryFile(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a memory file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_29
    invoke-static {}, Landroid/os/MemoryFileEx$PrivateAccess;->aspectOf()Landroid/os/MemoryFileEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFileEx;->mFD_aroundBody1$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 84
    invoke-static {}, Landroid/os/MemoryFileEx$PrivateAccess;->aspectOf()Landroid/os/MemoryFileEx$PrivateAccess;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move v2, p2

    move-object v4, p0

    move v5, p2

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFileEx;->mLength_aroundBody3$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;ILandroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;ILorg/aspectj/runtime/internal/AroundClosure;)V

    .line 85
    invoke-static {}, Landroid/os/MemoryFileEx$PrivateAccess;->aspectOf()Landroid/os/MemoryFileEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Landroid/os/MemoryFileEx;->mFD_aroundBody5$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {}, Landroid/os/MemoryFileEx$PrivateAccess;->aspectOf()Landroid/os/MemoryFileEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, p0, v2}, Landroid/os/MemoryFileEx;->PROT_READ_aroundBody7$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFileEx;->native_mmap(Ljava/io/FileDescriptor;II)J

    move-result-wide v2

    invoke-static {}, Landroid/os/MemoryFileEx$PrivateAccess;->aspectOf()Landroid/os/MemoryFileEx$PrivateAccess;

    move-result-object v4

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v5, p0

    move-wide v6, v2

    invoke-static/range {v0 .. v8}, Landroid/os/MemoryFileEx;->mAddress_aroundBody9$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;JLandroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;JLorg/aspectj/runtime/internal/AroundClosure;)V

    .line 86
    sget-object v0, Landroid/os/MemoryFileEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MemoryFile() mAddress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/MemoryFileEx$PrivateAccess;->aspectOf()Landroid/os/MemoryFileEx$PrivateAccess;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p0, v2, p0, v3}, Landroid/os/MemoryFileEx;->mAddress_aroundBody11$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$PROT_READ(Landroid/os/MemoryFileEx;)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mFD(Landroid/os/MemoryFileEx;)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mAddress(Landroid/os/MemoryFileEx;)V

    invoke-static {p0}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldInit$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mLength(Landroid/os/MemoryFileEx;)V

    .line 52
    return-void
.end method

.method private static final PROT_READ_aroundBody6(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;)I
    .registers 3

    .prologue
    .line 85
    invoke-static {p1}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldGetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$PROT_READ(Landroid/os/MemoryFileEx;)I

    move-result v0

    return v0
.end method

.method private static final PROT_READ_aroundBody7$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "ajc$this"    # Landroid/os/MemoryFileEx;
    .param p1, "target"    # Landroid/os/MemoryFileEx;
    .param p2, "ajc$aspectInstance"    # Landroid/os/MemoryFileEx$PrivateAccess;
    .param p3, "ob"    # Landroid/os/MemoryFileEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 110
    invoke-static {}, Landroid/os/MemoryFile;->ajc$get$PROT_READ()I

    move-result v0

    return v0
.end method

.method public static ajc$get$PROT_READ(Landroid/os/MemoryFileEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Landroid/os/MemoryFileEx;->PROT_READ:I

    return v0
.end method

.method public static ajc$get$mAddress(Landroid/os/MemoryFileEx;)J
    .registers 3

    .prologue
    .line 1
    iget-wide v0, p0, Landroid/os/MemoryFileEx;->mAddress:J

    return-wide v0
.end method

.method public static ajc$get$mFD(Landroid/os/MemoryFileEx;)Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Landroid/os/MemoryFileEx;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public static ajc$get$mLength(Landroid/os/MemoryFileEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Landroid/os/MemoryFileEx;->mLength:I

    return v0
.end method

.method public static ajc$set$PROT_READ(Landroid/os/MemoryFileEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Landroid/os/MemoryFileEx;->PROT_READ:I

    return-void
.end method

.method public static ajc$set$mAddress(Landroid/os/MemoryFileEx;J)V
    .registers 4

    .prologue
    .line 1
    iput-wide p1, p0, Landroid/os/MemoryFileEx;->mAddress:J

    return-void
.end method

.method public static ajc$set$mFD(Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/os/MemoryFileEx;->mFD:Ljava/io/FileDescriptor;

    return-void
.end method

.method public static ajc$set$mLength(Landroid/os/MemoryFileEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Landroid/os/MemoryFileEx;->mLength:I

    return-void
.end method

.method private static isMemoryFile(Ljava/io/FileDescriptor;)Z
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p0}, Landroid/os/MemoryFileEx;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static final mAddress_aroundBody10(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;)J
    .registers 4

    .prologue
    .line 86
    invoke-static {p1}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldGetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mAddress(Landroid/os/MemoryFileEx;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final mAddress_aroundBody11$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 7
    .param p0, "ajc$this"    # Landroid/os/MemoryFileEx;
    .param p1, "target"    # Landroid/os/MemoryFileEx;
    .param p2, "ajc$aspectInstance"    # Landroid/os/MemoryFileEx$PrivateAccess;
    .param p3, "ob"    # Landroid/os/MemoryFileEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 119
    invoke-static {p3}, Landroid/os/MemoryFile;->ajc$get$mAddress(Landroid/os/MemoryFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final mAddress_aroundBody8(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;J)V
    .registers 4

    .prologue
    .line 85
    invoke-static {p1, p2, p3}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldSetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mAddress(Landroid/os/MemoryFileEx;J)V

    return-void
.end method

.method private static final mAddress_aroundBody9$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;JLandroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;JLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .param p0, "ajc$this"    # Landroid/os/MemoryFileEx;
    .param p1, "target"    # Landroid/os/MemoryFileEx;
    .param p2, "mAddress"    # J
    .param p4, "ajc$aspectInstance"    # Landroid/os/MemoryFileEx$PrivateAccess;
    .param p5, "ob"    # Landroid/os/MemoryFileEx;
    .param p6, "val"    # J
    .param p8, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 133
    invoke-static {p5, p6, p7}, Landroid/os/MemoryFile;->ajc$set$mAddress(Landroid/os/MemoryFile;J)V

    .line 134
    return-void
.end method

.method private static final mFD_aroundBody0(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;)V
    .registers 3

    .prologue
    .line 83
    invoke-static {p1, p2}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldSetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mFD(Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private static final mFD_aroundBody1$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Ljava/io/FileDescriptor;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/os/MemoryFileEx;
    .param p1, "target"    # Landroid/os/MemoryFileEx;
    .param p2, "mFD"    # Ljava/io/FileDescriptor;
    .param p3, "ajc$aspectInstance"    # Landroid/os/MemoryFileEx$PrivateAccess;
    .param p4, "ob"    # Landroid/os/MemoryFileEx;
    .param p5, "val"    # Ljava/io/FileDescriptor;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 128
    invoke-static {p4, p5}, Landroid/os/MemoryFile;->ajc$set$mFD(Landroid/os/MemoryFile;Ljava/io/FileDescriptor;)V

    .line 129
    return-void
.end method

.method private static final mFD_aroundBody4(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;)Ljava/io/FileDescriptor;
    .registers 3

    .prologue
    .line 85
    invoke-static {p1}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldGetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mFD(Landroid/os/MemoryFileEx;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static final mFD_aroundBody5$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/io/FileDescriptor;
    .registers 6
    .param p0, "ajc$this"    # Landroid/os/MemoryFileEx;
    .param p1, "target"    # Landroid/os/MemoryFileEx;
    .param p2, "ajc$aspectInstance"    # Landroid/os/MemoryFileEx$PrivateAccess;
    .param p3, "ob"    # Landroid/os/MemoryFileEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 115
    invoke-static {p3}, Landroid/os/MemoryFile;->ajc$get$mFD(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static final mLength_aroundBody2(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;I)V
    .registers 3

    .prologue
    .line 84
    invoke-static {p1, p2}, Landroid/os/MemoryFileEx$PrivateAccess;->ajc$interFieldSetDispatch$android_os_MemoryFileEx$PrivateAccess$android_os_MemoryFileEx$mLength(Landroid/os/MemoryFileEx;I)V

    return-void
.end method

.method private static final mLength_aroundBody3$advice(Landroid/os/MemoryFileEx;Landroid/os/MemoryFileEx;ILandroid/os/MemoryFileEx$PrivateAccess;Landroid/os/MemoryFileEx;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "ajc$this"    # Landroid/os/MemoryFileEx;
    .param p1, "target"    # Landroid/os/MemoryFileEx;
    .param p2, "mLength"    # I
    .param p3, "ajc$aspectInstance"    # Landroid/os/MemoryFileEx$PrivateAccess;
    .param p4, "ob"    # Landroid/os/MemoryFileEx;
    .param p5, "val"    # I
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 123
    invoke-static {p4, p5}, Landroid/os/MemoryFile;->ajc$set$mLength(Landroid/os/MemoryFile;I)V

    .line 124
    return-void
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
