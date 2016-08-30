.class public interface abstract Lcom/lge/systemservice/core/IQuickToolsManager;
.super Ljava/lang/Object;
.source "IQuickToolsManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IQuickToolsManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/lge/systemservice/core/IQuickToolsManagerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVisibility(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
