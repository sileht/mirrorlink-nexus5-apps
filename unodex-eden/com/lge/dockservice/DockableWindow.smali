.class public interface abstract Lcom/lge/dockservice/DockableWindow;
.super Ljava/lang/Object;
.source "DockableWindow.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x1

.field public static final DIRECTION_INVALID:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x3

.field public static final DIRECTION_UP:I = 0x0

.field public static final STATE_DOCK:I = 0x2

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_UNDOCK:I


# virtual methods
.method public abstract getClientPackageName()Ljava/lang/String;
.end method

.method public abstract getClientRect()Landroid/graphics/Rect;
.end method

.method public abstract getDockIconBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getTouchOffsetX()I
.end method

.method public abstract getTouchOffsetY()I
.end method

.method public abstract handleTouch(Landroid/view/MotionEvent;)V
.end method

.method public abstract isCleanView()I
.end method

.method public abstract isDocked()Z
.end method

.method public abstract onDockCompleted(I)V
.end method

.method public abstract onDockStarting(Z)Z
.end method

.method public abstract onDockStateChanged(I)V
.end method

.method public abstract onEnterDockArea()V
.end method

.method public abstract onLeaveDockArea()V
.end method

.method public abstract onUndockCompleted()V
.end method

.method public abstract onUndockStarting(Z)Z
.end method
