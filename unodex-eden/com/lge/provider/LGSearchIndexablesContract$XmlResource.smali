.class public final Lcom/lge/provider/LGSearchIndexablesContract$XmlResource;
.super Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;
.source "LGSearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/LGSearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlResource"
.end annotation


# static fields
.field public static final COLUMN_XML_RESID:Ljava/lang/String; = "xmlResId"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_xml_res"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;-><init>()V

    .line 336
    return-void
.end method
