.class public interface abstract Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;
.super Ljava/lang/Object;
.source "ISplitWindowStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSplitWindowStateChanged(Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
