.class public interface abstract Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;
.super Ljava/lang/Object;
.source "IScreenStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/IScreenStateChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onScreenAttributeChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScreenSizeChanged(ILandroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
