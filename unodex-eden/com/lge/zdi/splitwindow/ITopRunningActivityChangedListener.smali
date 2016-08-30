.class public interface abstract Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;
.super Ljava/lang/Object;
.source "ITopRunningActivityChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTopRunningActivityChanged(ILandroid/content/pm/ActivityInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
