.class abstract Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;
.super Ljava/lang/Object;
.source "JavaScriptInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StoppableRunnable"
.end annotation


# instance fields
.field public stop:Z

.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;->this$0:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;->stop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;-><init>(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)V

    return-void
.end method
