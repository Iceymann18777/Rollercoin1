.class Lcom/tappx/a/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/f2;->b(Lcom/tappx/sdk/android/AdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/sdk/android/AdRequest;

.field final synthetic b:Lcom/tappx/a/f2;


# direct methods
.method constructor <init>(Lcom/tappx/a/f2;Lcom/tappx/sdk/android/AdRequest;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/f2$a;->b:Lcom/tappx/a/f2;

    iput-object p2, p0, Lcom/tappx/a/f2$a;->a:Lcom/tappx/sdk/android/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f2$a;->b:Lcom/tappx/a/f2;

    iget-object v1, p0, Lcom/tappx/a/f2$a;->a:Lcom/tappx/sdk/android/AdRequest;

    invoke-static {v0, v1}, Lcom/tappx/a/f2;->a(Lcom/tappx/a/f2;Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method
