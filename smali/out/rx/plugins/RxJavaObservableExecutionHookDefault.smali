.class final Lrx/plugins/RxJavaObservableExecutionHookDefault;
.super Lrx/plugins/RxJavaObservableExecutionHook;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static final INSTANCE:Lrx/plugins/RxJavaObservableExecutionHookDefault;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lrx/plugins/RxJavaObservableExecutionHookDefault;

    invoke-direct {v0}, Lrx/plugins/RxJavaObservableExecutionHookDefault;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaObservableExecutionHookDefault;->INSTANCE:Lrx/plugins/RxJavaObservableExecutionHookDefault;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lrx/plugins/RxJavaObservableExecutionHook;-><init>()V

    return-void
.end method

.method public static getInstance()Lrx/plugins/RxJavaObservableExecutionHook;
    .registers 1

    .line 31
    sget-object v0, Lrx/plugins/RxJavaObservableExecutionHookDefault;->INSTANCE:Lrx/plugins/RxJavaObservableExecutionHookDefault;

    return-object v0
.end method
