.class public final Lcom/lge/lgdrm/DrmException;
.super Ljava/lang/Exception;
.source "DrmException.java"


# static fields
.field private static final serialVersionUID:J = 0x16e5c9499165dcf5L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
