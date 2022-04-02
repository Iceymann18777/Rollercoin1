.class Lcom/tappx/a/k4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/k4;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tappx/a/k4$c;

.field final synthetic d:Lcom/tappx/a/k4;


# direct methods
.method constructor <init>(Lcom/tappx/a/k4;Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/tappx/a/k4$a;->d:Lcom/tappx/a/k4;

    iput-object p2, p0, Lcom/tappx/a/k4$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tappx/a/k4$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tappx/a/k4$a;->c:Lcom/tappx/a/k4$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tappx/a/k4$a;->d:Lcom/tappx/a/k4;

    iget-object p2, p0, Lcom/tappx/a/k4$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tappx/a/k4$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tappx/a/k4$a;->c:Lcom/tappx/a/k4$c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/tappx/a/k4;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V

    return-void
.end method
