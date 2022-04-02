.class public Lcom/appsgeyser/multiTabApp/utils/PermissionController;
.super Ljava/lang/Object;
.source "PermissionController.java"


# static fields
.field private static permissionController:Lcom/appsgeyser/multiTabApp/utils/PermissionController;


# instance fields
.field private isLaunch:Z

.field private final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->queue:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/appsgeyser/multiTabApp/utils/PermissionController;
    .registers 2

    const-class v0, Lcom/appsgeyser/multiTabApp/utils/PermissionController;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->permissionController:Lcom/appsgeyser/multiTabApp/utils/PermissionController;

    if-nez v1, :cond_e

    .line 28
    new-instance v1, Lcom/appsgeyser/multiTabApp/utils/PermissionController;

    invoke-direct {v1}, Lcom/appsgeyser/multiTabApp/utils/PermissionController;-><init>()V

    sput-object v1, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->permissionController:Lcom/appsgeyser/multiTabApp/utils/PermissionController;

    .line 31
    :cond_e
    sget-object v1, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->permissionController:Lcom/appsgeyser/multiTabApp/utils/PermissionController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addPermissions([Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 37
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-boolean v2, p0, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->isLaunch:Z

    if-nez v2, :cond_26

    .line 41
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 43
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 41
    invoke-static {v0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string p1, "permissionsPair!"

    const-string p2, "request"

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->isLaunch:Z

    goto :goto_2b

    .line 48
    :cond_26
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/PermissionController;->queue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2b
    return-void
.end method
