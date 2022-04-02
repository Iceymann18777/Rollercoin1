.class final Lcom/b/a/a/a/h/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/b/a/a/a/h/a;->a()Lcom/b/a/a/a/h/a;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/h/a;->b(Lcom/b/a/a/a/h/a;)V

    return-void
.end method
