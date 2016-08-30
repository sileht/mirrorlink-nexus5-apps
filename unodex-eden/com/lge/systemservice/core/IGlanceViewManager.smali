.class public interface abstract Lcom/lge/systemservice/core/IGlanceViewManager;
.super Ljava/lang/Object;
.source "IGlanceViewManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IGlanceViewManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/lge/systemservice/core/IGlanceViewManagerCallback;)V
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

.method public abstract updateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
