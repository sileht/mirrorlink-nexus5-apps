.class public interface abstract Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;
.super Ljava/lang/Object;
.source "IScreenFocusChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onScreenFocusChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
