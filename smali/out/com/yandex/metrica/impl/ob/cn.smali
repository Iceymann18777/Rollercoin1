.class public Lcom/yandex/metrica/impl/ob/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method
