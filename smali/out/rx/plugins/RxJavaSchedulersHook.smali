.class public Lrx/plugins/RxJavaSchedulersHook;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-direct {v0}, Lrx/plugins/RxJavaSchedulersHook;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lrx/plugins/RxJavaSchedulersHook;
    .registers 1

    .line 158
    sget-object v0, Lrx/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;

    return-object v0
.end method


# virtual methods
.method public onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method
