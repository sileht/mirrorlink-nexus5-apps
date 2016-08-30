.class public interface abstract Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;
.super Ljava/lang/Object;
.source "ISplitModeChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ISplitModeChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSplitModeCanceled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSplitModePrepared(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
