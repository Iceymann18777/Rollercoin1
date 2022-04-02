.class Lcom/b/a/a/a/g/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/g/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/g/c;

.field private b:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/g/c;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/g/c$1;->a:Lcom/b/a/a/a/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/b/a/a/a/g/c$1;->a:Lcom/b/a/a/a/g/c;

    invoke-static {p1}, Lcom/b/a/a/a/g/c;->a(Lcom/b/a/a/a/g/c;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/a/g/c$1;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/g/c$1;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
