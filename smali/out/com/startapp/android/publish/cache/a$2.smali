.class Lcom/startapp/android/publish/cache/a$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/cache/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/cache/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/cache/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/cache/a;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/startapp/android/publish/cache/a$2;->a:Lcom/startapp/android/publish/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a$2;->a:Lcom/startapp/android/publish/cache/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/startapp/android/publish/cache/a;->b:Z

    return-void
.end method
