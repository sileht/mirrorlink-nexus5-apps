.class public final Lcom/lge/provider/LGSearchIndexablesContract$NonIndexableKey;
.super Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;
.source "LGSearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/LGSearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonIndexableKey"
.end annotation


# static fields
.field public static final COLUMN_KEY_VALUE:Ljava/lang/String; = "key"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/non_indexables_key"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;-><init>()V

    .line 473
    return-void
.end method
