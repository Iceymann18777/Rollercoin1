.class final Lcom/appnext/core/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/e;->a(Lcom/appnext/core/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gB:Lcom/appnext/core/e;

.field final synthetic gD:Lcom/appnext/core/e$b;


# direct methods
.method constructor <init>(Lcom/appnext/core/e;Lcom/appnext/core/e$b;)V
    .registers 3

    .line 312
    iput-object p1, p0, Lcom/appnext/core/e$3;->gB:Lcom/appnext/core/e;

    iput-object p2, p0, Lcom/appnext/core/e$3;->gD:Lcom/appnext/core/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/e$3;->gD:Lcom/appnext/core/e$b;

    iget-object v0, v0, Lcom/appnext/core/e$b;->gJ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_8

    :catchall_8
    return-void
.end method
