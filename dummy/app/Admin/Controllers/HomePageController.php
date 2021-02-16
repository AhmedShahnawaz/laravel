<?php

namespace App\Admin\Controllers;

use App\HomePage;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class HomePageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'HomePage';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new HomePage());
        // $grid->disableTools();
        $grid->disableFilter();
        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->disableBatchActions();
        $grid->actions(function ($actions) {
            $actions->disableDelete();
            // $actions->disableEdit();
            // $actions->disableView();
        });
        $grid->column('id', __('Id'));
        $grid->column('baner1', __('Baner1'))->image();
        $grid->column('baner2', __('Baner2'))->image();
        $grid->column('baner3', __('Baner3'))->image();
        $grid->column('baner1_heading', __('Baner1 heading'));
        $grid->column('baner2_heading', __('Baner2 heading'));
        $grid->column('baner3_heading', __('Baner3 heading'));
        $grid->column('baner1_text', __('Baner1 text'));
        $grid->column('baner2_text', __('Baner2 text'));
        $grid->column('baner3_text', __('Baner3 text'));
        $grid->column('featured_area_heading', __('Featured area heading'));
        $grid->column('featured_area_text', __('Featured area text'));
        $grid->column('fh1_heading', __('Fh1 heading'));
        $grid->column('fh1_text', __('Fh1 text'));
        $grid->column('fh2_heading', __('Fh2 heading'));
        $grid->column('fh2_text', __('Fh2 text'));
        $grid->column('fh3_heading', __('Fh3 heading'));
        $grid->column('fh3_text', __('Fh3 text'));
        $grid->column('app_image', __('App Image'))->image();
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(HomePage::findOrFail($id));
        $show->panel()->tools(function ($tools) {
            $tools->disableDelete();
            // $tools->disableList();

        });
        $show->field('id', __('Id'));
        $show->field('baner1', __('Baner1'));
        $show->field('baner2', __('Baner2'));
        $show->field('baner3', __('Baner3'));
        $show->field('baner1_heading', __('Baner1 heading'));
        $show->field('baner2_heading', __('Baner2 heading'));
        $show->field('baner3_heading', __('Baner3 heading'));
        $show->field('baner1_text', __('Baner1 text'));
        $show->field('baner2_text', __('Baner2 text'));
        $show->field('baner3_text', __('Baner3 text'));
        $show->field('featured_area_heading', __('Featured area heading'));
        $show->field('featured_area_text', __('Featured area text'));
        $show->field('fh1_heading', __('Fh1 heading'));
        $show->field('fh1_text', __('Fh1 text'));
        $show->field('fh2_heading', __('Fh2 heading'));
        $show->field('fh2_text', __('Fh2 text'));
        $show->field('fh3_heading', __('Fh3 heading'));
        $show->field('fh3_text', __('Fh3 text'));
        $show->field('app_image', __('App Image'));
        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new HomePage());
        $form->tools(function (Form\Tools $tools) {
            $tools->disableDelete();
            // $tools->disableList();
            // $tools->disableView();
        });
        $form->image('baner1', __('Baner1'));
        $form->image('baner2', __('Baner2'));
        $form->image('baner3', __('Baner3'));
        $form->text('baner1_heading', __('Baner1 heading'));
        $form->text('baner2_heading', __('Baner2 heading'));
        $form->text('baner3_heading', __('Baner3 heading'));
        $form->textarea('baner1_text', __('Baner1 text'));
        $form->textarea('baner2_text', __('Baner2 text'));
        $form->textarea('baner3_text', __('Baner3 text'));
        $form->text('featured_area_heading', __('Featured area heading'));
        $form->ckeditor('featured_area_text', __('Featured area text'));
        $form->text('fh1_heading', __('Fh1 heading'));
        $form->ckeditor('fh1_text', __('Fh1 text'));
        $form->text('fh2_heading', __('Fh2 heading'));
        $form->ckeditor('fh2_text', __('Fh2 text'));
        $form->text('fh3_heading', __('Fh3 heading'));
        $form->ckeditor('fh3_text', __('Fh3 text'));
        $form->image('app_image', __('App Image'));
        $form->text('app_link', __('App Link'));

        return $form;
    }
}
