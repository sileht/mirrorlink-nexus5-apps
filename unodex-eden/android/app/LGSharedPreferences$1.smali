.class Landroid/app/LGSharedPreferences$1;
.super Ljava/lang/Object;
.source "LGSharedPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/LGSharedPreferences;->notifyListeners(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/LGSharedPreferences;

.field private final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/app/LGSharedPreferences;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/LGSharedPreferences$1;->this$0:Landroid/app/LGSharedPreferences;

    iput-object p2, p0, Landroid/app/LGSharedPreferences$1;->val$map:Ljava/util/Map;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Landroid/app/LGSharedPreferences$1;->this$0:Landroid/app/LGSharedPreferences;

    iget-object v1, p0, Landroid/app/LGSharedPreferences$1;->val$map:Ljava/util/Map;

    # invokes: Landroid/app/LGSharedPreferences;->notifyListeners(Ljava/util/Map;)V
    invoke-static {v0, v1}, Landroid/app/LGSharedPreferences;->access$0(Landroid/app/LGSharedPreferences;Ljava/util/Map;)V

    .line 362
    return-void
.end method
