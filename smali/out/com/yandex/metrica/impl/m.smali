.class public Lcom/yandex/metrica/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/yandex/metrica/impl/z;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/z;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/m;->a:Lcom/yandex/metrica/impl/z;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/m;->a:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/z;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/m;->a:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/z;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
