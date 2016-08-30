.class public interface abstract Lcom/lge/android/atservice/client/ILGATCMDService;
.super Ljava/lang/Object;
.source "ILGATCMDService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/client/ILGATCMDService$Stub;
    }
.end annotation


# virtual methods
.method public abstract request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
