.class final Lcom/tappx/a/p$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/p$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/a/p$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tappx/a/p0$b;->a(Landroid/content/Context;)Lcom/tappx/a/p0$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/p0$b;->a()Lcom/tappx/a/p0;

    .line 2
    iget-object p1, p0, Lcom/tappx/a/p$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tappx/a/m1$a;->a(Landroid/content/Context;)Lcom/tappx/a/m1$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/m1$a;->b()Lcom/tappx/a/m1;

    .line 3
    iget-object p1, p0, Lcom/tappx/a/p$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tappx/a/i1$a;->a(Landroid/content/Context;)Lcom/tappx/a/i1$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/i1$a;->a()Lcom/tappx/a/i1;

    .line 4
    iget-object p1, p0, Lcom/tappx/a/p$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tappx/a/l0$a;->a(Landroid/content/Context;)Lcom/tappx/a/l0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/l0$a;->a()Lcom/tappx/a/l0;

    .line 5
    iget-object p1, p0, Lcom/tappx/a/p$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tappx/a/g1$b;->a(Landroid/content/Context;)Lcom/tappx/a/g1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/g1$b;->a()Lcom/tappx/a/g1;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tappx/a/p$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
