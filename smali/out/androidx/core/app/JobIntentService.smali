.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# static fields
.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 416
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    .line 100
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    .line 101
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_1b

    .line 420
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    :goto_1b
    return-void
.end method
