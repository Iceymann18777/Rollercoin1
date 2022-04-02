.class Lcom/tappx/a/z2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/z2;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tappx/a/z2;


# direct methods
.method constructor <init>(Lcom/tappx/a/z2;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/z2$b;->b:Lcom/tappx/a/z2;

    iput-object p2, p0, Lcom/tappx/a/z2$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/z2$b;->b:Lcom/tappx/a/z2;

    iget-object v1, p0, Lcom/tappx/a/z2$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tappx/a/z2;->a(Lcom/tappx/a/z2;Ljava/lang/String;)V

    return-void
.end method
