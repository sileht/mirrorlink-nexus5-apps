.class public interface abstract Lcom/lge/app/permission/AppWidgetUiProvider;
.super Ljava/lang/Object;
.source "AppWidgetUiProvider.java"

# interfaces
.implements Lcom/lge/app/permission/GuideUiProvider;


# virtual methods
.method public abstract getGuideMessageForAppWidget(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract getRemoteViews(Landroid/content/Context;[Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
.end method
