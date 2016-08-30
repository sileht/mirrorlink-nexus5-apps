.class public interface abstract Lcom/lge/systemservice/core/IWfdMediaCmdListener;
.super Ljava/lang/Object;
.source "IWfdMediaCmdListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IWfdMediaCmdListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract playpause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
