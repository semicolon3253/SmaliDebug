.class public Lkr/semicolon1/smalidebug/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startTest()V
    .registers 3

    .prologue
    .line 21
    const-string v0, "SmaliDebug"

    const-string v1, "This is Error"

    invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printErrorLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string v0, "SmaliDebug"

    const-string v1, "This is Warning"

    invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printWarningLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    const-string v0, "SmaliDebug"

    const-string v1, "This is Info"

    invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printInfoLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v0, "SmaliDebug"

    const-string v1, "This is Debug"

    invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    const-string v0, "SmaliDebug"

    const-string v1, "This is Verbose"

    invoke-static {v0, v1}, Lkr/semicolon1/smalidebug/SmaliDebug;->printVerboseLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v0, "This is System.out.println"

    invoke-static {v0}, Lkr/semicolon1/smalidebug/SmaliDebug;->printSys(Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lkr/semicolon1/smalidebug/SmaliDebug;->stackTrace()V

    .line 31
    new-instance v0, Lkr/semicolon1/smalidebug/MyClass;

    invoke-direct {v0}, Lkr/semicolon1/smalidebug/MyClass;-><init>()V

    .line 32
    invoke-static {v0}, Lkr/semicolon1/smalidebug/SmaliDebug;->printFields(Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lkr/semicolon1/smalidebug/SmaliDebug;->setUncaughtException()V

    .line 35
    const/4 v0, 0x3

    div-int/lit8 v0, v0, 0x0

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lkr/semicolon1/smalidebug/MainActivity;->setContentView(I)V

    .line 16
    const-string v0, "\u314b\u314b\u314b123"

    invoke-static {v0}, Lkr/semicolon1/smalidebug/SmaliDebug;->saveFile(Ljava/lang/Object;)V

    .line 18
    return-void
.end method
