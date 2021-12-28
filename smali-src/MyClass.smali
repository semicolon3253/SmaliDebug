.class public Lkr/semicolon1/smalidebug/MyClass;
.super Ljava/lang/Object;
.source "MyClass.java"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field public i:I

.field private ii:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "public string"

    iput-object v0, p0, Lkr/semicolon1/smalidebug/MyClass;->a:Ljava/lang/String;

    .line 5
    const-string v0, "private string"

    iput-object v0, p0, Lkr/semicolon1/smalidebug/MyClass;->b:Ljava/lang/String;

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lkr/semicolon1/smalidebug/MyClass;->i:I

    .line 7
    const/16 v0, 0xb

    iput v0, p0, Lkr/semicolon1/smalidebug/MyClass;->ii:I

    .line 3
    return-void
.end method
