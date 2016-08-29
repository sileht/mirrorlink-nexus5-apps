.class public Lorg/bouncycastle/cert/crmf/CRMFException;
.super Ljava/lang/Exception;
.source "Unknown"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/CRMFException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CRMFException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
