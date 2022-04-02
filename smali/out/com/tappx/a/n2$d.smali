.class Lcom/tappx/a/n2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n2$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/n2;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tappx/a/n2;


# direct methods
.method constructor <init>(Lcom/tappx/a/n2;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tappx/a/n2$d;->c:Lcom/tappx/a/n2;

    iput-object p2, p0, Lcom/tappx/a/n2$d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tappx/a/n2$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tappx/a/n2$d;->c:Lcom/tappx/a/n2;

    iget-object v0, p0, Lcom/tappx/a/n2$d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tappx/a/n2$d;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
