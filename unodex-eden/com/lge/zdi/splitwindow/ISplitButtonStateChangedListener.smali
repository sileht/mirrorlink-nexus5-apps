.class public interface abstract Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;
.super Ljava/lang/Object;
.source "ISplitButtonStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSplitButtonStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
