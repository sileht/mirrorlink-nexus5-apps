.class public interface abstract Lcom/lge/systemservice/core/IGlanceViewManagerCallback;
.super Ljava/lang/Object;
.source "IGlanceViewManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IGlanceViewManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStatusBarChanged(Lcom/lge/systemui/GlanceViewStatusBar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVisibilityChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
