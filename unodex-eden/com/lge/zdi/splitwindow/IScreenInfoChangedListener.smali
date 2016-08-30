.class public interface abstract Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;
.super Ljava/lang/Object;
.source "IScreenInfoChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onScreenInfoChanged(Lcom/lge/zdi/splitwindow/ScreenChangedEvent;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/zdi/splitwindow/ScreenChangedEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/splitwindow/ScreenInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
