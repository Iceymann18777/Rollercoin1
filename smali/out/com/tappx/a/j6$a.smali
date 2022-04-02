.class final Lcom/tappx/a/j6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/e6$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/j6;->a(Landroid/content/Context;Lcom/tappx/a/n5;)Lcom/tappx/a/t5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/j6$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/tappx/a/j6$a;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/j6$a;->a:Ljava/io/File;

    if-nez v0, :cond_13

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tappx/a/j6$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tappx/a/j6$a;->a:Ljava/io/File;

    .line 4
    :cond_13
    iget-object v0, p0, Lcom/tappx/a/j6$a;->a:Ljava/io/File;

    return-object v0
.end method
